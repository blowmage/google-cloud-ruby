# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


require "gcloud/version"
require "gcloud/errors"
require "google/apis/bigquery_v2"
require "pathname"
require "digest/md5"

module Gcloud
  module Bigquery
    ##
    # @private Represents the Bigquery service and API calls.
    class Service
      ##
      # Alias to the Google Client API module
      API = Google::Apis::BigqueryV2

      # @private
      attr_accessor :project

      # @private
      attr_accessor :credentials

      ##
      # Creates a new Service instance.
      def initialize project, credentials
        @project = project
        @credentials = credentials
        @credentials = credentials
        @service = API::BigqueryService.new
        @service.client_options.application_name    = "gcloud-ruby"
        @service.client_options.application_version = Gcloud::VERSION
        @service.authorization = @credentials.client
      end

      def service
        return mocked_service if mocked_service
        @service
      end
      attr_accessor :mocked_service

      ##
      # Lists all datasets in the specified project to which you have
      # been granted the READER dataset role.
      def list_datasets options = {}
        service.list_datasets \
        @project, all: options[:all], max_results: options[:max],
                  page_token: options[:token]
      end

      ##
      # Returns the dataset specified by datasetID.
      def get_dataset dataset_id
        service.get_dataset @project, dataset_id
      end

      ##
      # Creates a new empty dataset.
      def insert_dataset dataset_id, new_dataset_gapi
        new_dataset_gapi.dataset_reference ||= \
          Google::Apis::BigqueryV2::DatasetReference.new(
            project_id: @project, dataset_id: dataset_id)

        service.insert_dataset @project, new_dataset_gapi
      end

      ##
      # Updates information in an existing dataset, only replacing
      # fields that are provided in the submitted dataset resource.
      def patch_dataset dataset_id, patched_dataset_gapi
        patched_dataset_gapi.dataset_reference ||= \
          Google::Apis::BigqueryV2::DatasetReference.new(
            project_id: @project, dataset_id: dataset_id)

        service.patch_dataset @project, dataset_id, patched_dataset_gapi
      end

      ##
      # Deletes the dataset specified by the datasetId value.
      # Before you can delete a dataset, you must delete all its tables,
      # either manually or by specifying force: true in options.
      # Immediately after deletion, you can create another dataset with
      # the same name.
      def delete_dataset dataset_id, force = nil
        service.delete_dataset @project, dataset_id, delete_contents: force
      end

      ##
      # Lists all tables in the specified dataset.
      # Requires the READER dataset role.
      def list_tables dataset_id, options = {}
        params = { projectId: @project,
                   datasetId: dataset_id,
                   pageToken: options.delete(:token),
                   maxResults: options.delete(:max)
                 }.delete_if { |_, v| v.nil? }

        execute(
          api_method: @bigquery.tables.list,
          parameters: params
        )
      end

      def get_project_table project_id, dataset_id, table_id
        execute(
          api_method: @bigquery.tables.get,
          parameters: { projectId: project_id, datasetId: dataset_id,
                        tableId: table_id }
        )
      end

      ##
      # Gets the specified table resource by table ID.
      # This method does not return the data in the table,
      # it only returns the table resource,
      # which describes the structure of this table.
      def get_table dataset_id, table_id
        get_project_table @project, dataset_id, table_id
      end

      ##
      # Creates a new, empty table in the dataset.
      def insert_table dataset_id, new_table_gapi
        service.insert_table @project, dataset_id, new_table_gapi
      end

      ##
      # Updates information in an existing table, replacing fields that
      # are provided in the submitted table resource.
      def patch_table dataset_id, table_id, options = {}
        execute(
          api_method: @bigquery.tables.patch,
          parameters: { projectId: @project, datasetId: dataset_id,
                        tableId: table_id },
          body_object: patch_table_request(options)
        )
      end

      ##
      # Deletes the table specified by tableId from the dataset.
      # If the table contains data, all the data will be deleted.
      def delete_table dataset_id, table_id
        execute(
          api_method: @bigquery.tables.delete,
          parameters: { projectId: @project, datasetId: dataset_id,
                        tableId: table_id }
        )
      end

      ##
      # Retrieves data from the table.
      def list_tabledata dataset_id, table_id, options = {}
        params = { projectId: @project,
                   datasetId: dataset_id, tableId: table_id,
                   pageToken: options.delete(:token),
                   maxResults: options.delete(:max),
                   startIndex: options.delete(:start)
                 }.delete_if { |_, v| v.nil? }

        execute(
          api_method: @bigquery.tabledata.list,
          parameters: params
        )
      end

      def insert_tabledata dataset_id, table_id, rows, options = {}
        execute(
          api_method: @bigquery.tabledata.insert_all,
          parameters: { projectId: @project,
                        datasetId: dataset_id,
                        tableId: table_id },
          body_object: insert_tabledata_rows(rows, options)
        )
      end

      ##
      # Lists all jobs in the specified project to which you have
      # been granted the READER job role.
      def list_jobs options = {}
        service.list_jobs \
          @project, all_users: options[:all], max_results: options[:max],
                    page_token: options[:token], projection: "full",
                    state_filter: options[:filter]
      end

      ##
      # Returns the job specified by jobID.
      def get_job job_id
        service.get_job @project, job_id
      end

      def insert_job config
        execute(
          api_method: @bigquery.jobs.insert,
          parameters: { projectId: @project },
          body_object: { "configuration" => config }
        )
      end

      def query_job query, options = {}
        execute(
          api_method: @bigquery.jobs.insert,
          parameters: { projectId: @project },
          body_object: query_table_config(query, options)
        )
      end

      def query query, options = {}
        execute(
          api_method: @bigquery.jobs.query,
          parameters: { projectId: @project },
          body_object: query_config(query, options)
        )
      end

      ##
      # Returns the query data for the job
      def job_query_results job_id, options = {}
        params = { projectId: @project, jobId: job_id,
                   pageToken: options.delete(:token),
                   maxResults: options.delete(:max),
                   startIndex: options.delete(:start),
                   timeoutMs: options.delete(:timeout)
                 }.delete_if { |_, v| v.nil? }

        execute(
          api_method: @bigquery.jobs.get_query_results,
          parameters: params
        )
      end

      def copy_table source, target, options = {}
        execute(
          api_method: @bigquery.jobs.insert,
          parameters: { projectId: @project },
          body_object: copy_table_config(source, target, options)
        )
      end

      def link_table table, urls, options = {}
        execute(
          api_method: @bigquery.jobs.insert,
          parameters: { projectId: @project },
          body_object: link_table_config(table, urls, options)
        )
      end

      def extract_table table, storage_files, options = {}
        execute(
          api_method: @bigquery.jobs.insert,
          parameters: { projectId: @project },
          body_object: extract_table_config(table, storage_files, options)
        )
      end

      def load_table table, storage_url, options = {}
        execute(
          api_method: @bigquery.jobs.insert,
          parameters: { projectId: @project },
          body_object: load_table_config(table, storage_url,
                                         Array(storage_url).first, options)
        )
      end

      def load_multipart table, file, options = {}
        media = load_media file

        execute(
          api_method: @bigquery.jobs.insert,
          media: media,
          parameters: { projectId: @project, uploadType: "multipart" },
          body_object: load_table_config(table, nil, file, options)
        )
      end

      def load_resumable table, file, chunk_size = nil, options = {}
        media = load_media file, chunk_size

        result = execute(
          api_method: @bigquery.jobs.insert,
          media: media,
          parameters: { projectId: @project, uploadType: "resumable" },
          body_object: load_table_config(table, nil, file, options)
        )
        upload = result.resumable_upload
        result = execute upload while upload.resumable?
        result
      end

      def default_access_rules
        [
          { "role" => "OWNER",  "specialGroup" => "projectOwners" },
          { "role" => "WRITER", "specialGroup" => "projectWriters" },
          { "role" => "READER", "specialGroup" => "projectReaders" },
          { "role" => "OWNER",  "userByEmail"  => credentials.issuer }
        ]
      end

      ##
      # Extracts at least `tbl` group, and possibly `dts` and `prj` groups,
      # from strings in the formats: "my_table", "my_dataset.my_table", or
      # "my-project:my_dataset.my_table". Then merges project_id and
      # dataset_id from the default table if they are missing.
      def self.table_ref_from_s str, default_table_ref
        str = str.to_s
        m = /\A(((?<prj>\S*):)?(?<dts>\S*)\.)?(?<tbl>\S*)\z/.match str
        unless m
          fail ArgumentError, "unable to identify table from #{str.inspect}"
        end
        str_table_ref_hash = { project_id: m["prj"],
                               dataset_id: m["dts"],
                               table_id:   m["tbl"] }.delete_if { |_, v| v.nil? }
        new_table_ref_hash = default_table_ref.to_h.merge str_table_ref_hash
        Google::Apis::BigqueryV2::TableReference.new new_table_ref_hash
      end

      def inspect
        "#{self.class}(#{@project})"
      end

      protected

      def patch_dataset_request options = {}
        {
          friendlyName: options[:name],
          description: options[:description],
          defaultTableExpirationMs: options[:default_expiration],
          access: options[:access]
        }.delete_if { |_, v| v.nil? }
      end

      ##
      # Create the HTTP body for insert table
      def insert_table_request dataset_id, table_id, options = {}
        hash = {
          tableReference: {
            projectId: @project, datasetId: dataset_id, tableId: table_id
          },
          friendlyName: options[:name],
          description: options[:description],
          schema: options[:schema]
        }.delete_if { |_, v| v.nil? }
        hash["view"] = { "query" => options[:query] } if options[:query]
        hash
      end

      def patch_table_request options = {}
        body = { friendlyName: options[:name],
                 description: options[:description],
                 schema: options[:schema]
               }.delete_if { |_, v| v.nil? }
        body["view"] = { "query" => options[:query] } if options[:query]
        body
      end

      def insert_tabledata_rows rows, options = {}
        {
          "kind" => "bigquery#tableDataInsertAllRequest",
          "skipInvalidRows" => options[:skip_invalid],
          "ignoreUnknownValues" => options[:ignore_unknown],
          "rows" => rows.map do |row|
            { "insertId" => Digest::MD5.base64digest(row.inspect),
              "json" => row }
          end
        }.delete_if { |_, v| v.nil? }
      end

      # # rubocop:disable all
      # # Disabled rubocop because the API is verbose and so these methods
      # # are going to be verbose.
      #
      # ##
      # # Job description for query job
      # def query_table_config query, options
      #   dest_table = nil
      #   if options[:table]
      #     dest_table = { "projectId"  => options[:table].project_id,
      #                     "datasetId" => options[:table].dataset_id,
      #                     "tableId"   => options[:table].table_id }
      #   end
      #   default_dataset = nil
      #   if dataset = options[:dataset]
      #     if dataset.respond_to? :dataset_id
      #       default_dataset = { "projectId" => dataset.project_id,
      #                           "datasetId" => dataset.dataset_id }
      #     else
      #       default_dataset = { "datasetId" => dataset }
      #     end
      #   end
      #   {
      #     "configuration" => {
      #       "query" => {
      #         "query" => query,
      #         # "tableDefinitions" => { ... },
      #         "priority" => priority_value(options[:priority]),
      #         "useQueryCache" => options[:cache],
      #         "destinationTable" => dest_table,
      #         "createDisposition" => create_disposition(options[:create]),
      #         "writeDisposition" => write_disposition(options[:write]),
      #         "allowLargeResults" => options[:large_results],
      #         "flattenResults" => options[:flatten],
      #         "defaultDataset" => default_dataset
      #       }.delete_if { |_, v| v.nil? }
      #     }.delete_if { |_, v| v.nil? }
      #   }
      # end
      #
      # def query_config query, options = {}
      #   dataset_config = nil
      #   dataset_config = {
      #     "datasetId" => options[:dataset],
      #     "projectId" => options[:project] || @project
      #   } if options[:dataset]
      #
      #   {
      #     "kind" => "bigquery#queryRequest",
      #     "query" => query,
      #     "maxResults" => options[:max],
      #     "defaultDataset" => dataset_config,
      #     "timeoutMs" => options[:timeout],
      #     "dryRun" => options[:dryrun],
      #     "useQueryCache" => options[:cache]
      #   }.delete_if { |_, v| v.nil? }
      # end
      #
      # ##
      # # Job description for copy job
      # def copy_table_config source, target, options = {}
      #   {
      #     "configuration" => {
      #       "copy" => {
      #         "sourceTable" => source,
      #         "destinationTable" => target,
      #         "createDisposition" => create_disposition(options[:create]),
      #         "writeDisposition" => write_disposition(options[:write])
      #       }.delete_if { |_, v| v.nil? },
      #       "dryRun" => options[:dryrun]
      #     }.delete_if { |_, v| v.nil? }
      #   }
      # end
      #
      # def link_table_config table, urls, options = {}
      #   path = Array(urls).first
      #   {
      #     "configuration" => {
      #       "link" => {
      #         "sourceUri" => Array(urls),
      #         "destinationTable" => table,
      #         "createDisposition" => create_disposition(options[:create]),
      #         "writeDisposition" => write_disposition(options[:write]),
      #         "sourceFormat" => source_format(path, options[:format])
      #       }.delete_if { |_, v| v.nil? },
      #       "dryRun" => options[:dryrun]
      #     }.delete_if { |_, v| v.nil? }
      #   }
      # end
      #
      # def extract_table_config table, storage_files, options = {}
      #   storage_urls = Array(storage_files).map do |url|
      #     url.respond_to?(:to_gs_url) ? url.to_gs_url : url
      #   end
      #   dest_format = source_format storage_urls.first, options[:format]
      #   {
      #     "configuration" => {
      #       "extract" => {
      #         "destinationUris"   => Array(storage_urls),
      #         "sourceTable"       => table,
      #         "destinationFormat" => dest_format,
      #         "compression"       => options[:compression],
      #         "fieldDelimiter"    => options[:delimiter],
      #         "printHeader"       => options[:header]
      #       }.delete_if { |_, v| v.nil? },
      #       "dryRun" => options[:dryrun]
      #     }.delete_if { |_, v| v.nil? }
      #   }
      # end
      #
      # def load_table_config table, urls, file, options = {}
      #   path = Array(urls).first
      #   path = Pathname(file).to_path unless file.nil?
      #   {
      #     "configuration" => {
      #       "load" => {
      #         "sourceUris"          => Array(urls),
      #         "destinationTable"    => table,
      #         "createDisposition"   => create_disposition(options[:create]),
      #         "writeDisposition"    => write_disposition(options[:write]),
      #         "sourceFormat"        => source_format(path, options[:format]),
      #         "projectionFields"    => projection_fields(options[:projection_fields]),
      #         "allowJaggedRows"     => options[:jagged_rows],
      #         "allowQuotedNewlines" => options[:quoted_newlines],
      #         "encoding"            => options[:encoding],
      #         "fieldDelimiter"      => options[:delimiter],
      #         "ignoreUnknownValues" => options[:ignore_unknown],
      #         "maxBadRecords"       => options[:max_bad_records],
      #         "quote"               => options[:quote],
      #         "schema"              => options[:schema],
      #         "skipLeadingRows"     => options[:skip_leading]
      #       }.delete_if { |_, v| v.nil? },
      #       "dryRun" => options[:dryrun]
      #     }.delete_if { |_, v| v.nil? }
      #   }
      # end
      #
      # def create_disposition str
      #   { "create_if_needed" => "CREATE_IF_NEEDED",
      #     "createifneeded" => "CREATE_IF_NEEDED",
      #     "if_needed" => "CREATE_IF_NEEDED",
      #     "needed" => "CREATE_IF_NEEDED",
      #     "create_never" => "CREATE_NEVER",
      #     "createnever" => "CREATE_NEVER",
      #     "never" => "CREATE_NEVER" }[str.to_s.downcase]
      # end
      #
      # def write_disposition str
      #   { "write_truncate" => "WRITE_TRUNCATE",
      #     "writetruncate" => "WRITE_TRUNCATE",
      #     "truncate" => "WRITE_TRUNCATE",
      #     "write_append" => "WRITE_APPEND",
      #     "writeappend" => "WRITE_APPEND",
      #     "append" => "WRITE_APPEND",
      #     "write_empty" => "WRITE_EMPTY",
      #     "writeempty" => "WRITE_EMPTY",
      #     "empty" => "WRITE_EMPTY" }[str.to_s.downcase]
      # end
      #
      # def priority_value str
      #   { "batch" => "BATCH",
      #     "interactive" => "INTERACTIVE" }[str.to_s.downcase]
      # end
      #
      # def source_format path, format
      #   val = { "csv" => "CSV",
      #           "json" => "NEWLINE_DELIMITED_JSON",
      #           "newline_delimited_json" => "NEWLINE_DELIMITED_JSON",
      #           "avro" => "AVRO",
      #           "datastore" => "DATASTORE_BACKUP",
      #           "datastore_backup" => "DATASTORE_BACKUP"}[format.to_s.downcase]
      #   return val unless val.nil?
      #   return nil if path.nil?
      #   return "CSV" if path.end_with? ".csv"
      #   return "NEWLINE_DELIMITED_JSON" if path.end_with? ".json"
      #   return "AVRO" if path.end_with? ".avro"
      #   return "DATASTORE_BACKUP" if path.end_with? ".backup_info"
      #   nil
      # end
      #
      # def projection_fields array_or_str
      #   Array(array_or_str) unless array_or_str.nil?
      # end
      #
      # # rubocop:enable all
    end
  end
end
