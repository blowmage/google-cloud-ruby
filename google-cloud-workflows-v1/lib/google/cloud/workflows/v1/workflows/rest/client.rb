# frozen_string_literal: true

# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/workflows/v1/workflows_pb"
require "google/cloud/workflows/v1/workflows/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module Workflows
      module V1
        module Workflows
          module Rest
            ##
            # REST client for the Workflows service.
            #
            # Workflows is used to deploy and execute workflow programs.
            # Workflows makes sure the program executes reliably, despite hardware and
            # networking interruptions.
            #
            class Client
              include Paths

              # @private
              attr_reader :workflows_stub

              ##
              # Configure the Workflows Client class.
              #
              # See {::Google::Cloud::Workflows::V1::Workflows::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Workflows clients
              #   ::Google::Cloud::Workflows::V1::Workflows::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Workflows", "V1"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Workflows Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Workflows::V1::Workflows::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # Create a new Workflows REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Workflows::V1::Workflows::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Workflows::V1::Workflows::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Workflows client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-")
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @operations_client = ::Google::Cloud::Workflows::V1::Workflows::Rest::Operations.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                end

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @config.endpoint
                  config.bindings_override = @config.bindings_override
                end

                @workflows_stub = ::Google::Cloud::Workflows::V1::Workflows::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
              end

              ##
              # Get the associated client for long-running operations.
              #
              # @return [::Google::Cloud::Workflows::V1::Workflows::Rest::Operations]
              #
              attr_reader :operations_client

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              # Service calls

              ##
              # Lists workflows in a given project and location.
              # The default order is not specified.
              #
              # @overload list_workflows(request, options = nil)
              #   Pass arguments to `list_workflows` via a request object, either of type
              #   {::Google::Cloud::Workflows::V1::ListWorkflowsRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::V1::ListWorkflowsRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload list_workflows(parent: nil, page_size: nil, page_token: nil, filter: nil, order_by: nil)
              #   Pass arguments to `list_workflows` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Project and location from which the workflows should be listed.
              #     Format: projects/\\{project}/locations/\\{location}
              #   @param page_size [::Integer]
              #     Maximum number of workflows to return per call. The service might return
              #     fewer than this value even if not at the end of the collection. If a value
              #     is not specified, a default value of 500 is used. The maximum permitted
              #     value is 1000 and values greater than 1000 are coerced down to 1000.
              #   @param page_token [::String]
              #     A page token, received from a previous `ListWorkflows` call.
              #     Provide this to retrieve the subsequent page.
              #
              #     When paginating, all other parameters provided to `ListWorkflows` must
              #     match the call that provided the page token.
              #   @param filter [::String]
              #     Filter to restrict results to specific workflows.
              #   @param order_by [::String]
              #     Comma-separated list of fields that specify the order of the results.
              #     Default sorting order for a field is ascending. To specify descending order
              #     for a field, append a "desc" suffix.
              #     If not specified, the results are returned in an unspecified order.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Workflows::V1::ListWorkflowsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Workflows::V1::ListWorkflowsResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def list_workflows request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::V1::ListWorkflowsRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.list_workflows.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.list_workflows.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.list_workflows.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @workflows_stub.list_workflows request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Gets details of a single workflow.
              #
              # @overload get_workflow(request, options = nil)
              #   Pass arguments to `get_workflow` via a request object, either of type
              #   {::Google::Cloud::Workflows::V1::GetWorkflowRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::V1::GetWorkflowRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload get_workflow(name: nil, revision_id: nil)
              #   Pass arguments to `get_workflow` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Name of the workflow for which information should be retrieved.
              #     Format: projects/\\{project}/locations/\\{location}/workflows/\\{workflow}
              #   @param revision_id [::String]
              #     Optional. The revision of the workflow to retrieve. If the revision_id is
              #     empty, the latest revision is retrieved.
              #     The format is "000001-a4d", where the first six characters define
              #     the zero-padded decimal revision number. They are followed by a hyphen and
              #     three hexadecimal characters.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Workflows::V1::Workflow]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Workflows::V1::Workflow]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def get_workflow request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::V1::GetWorkflowRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.get_workflow.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.get_workflow.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.get_workflow.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @workflows_stub.get_workflow request, options do |result, operation|
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Creates a new workflow. If a workflow with the specified name already
              # exists in the specified project and location, the long running operation
              # returns a [ALREADY_EXISTS][google.rpc.Code.ALREADY_EXISTS] error.
              #
              # @overload create_workflow(request, options = nil)
              #   Pass arguments to `create_workflow` via a request object, either of type
              #   {::Google::Cloud::Workflows::V1::CreateWorkflowRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::V1::CreateWorkflowRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload create_workflow(parent: nil, workflow: nil, workflow_id: nil)
              #   Pass arguments to `create_workflow` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param parent [::String]
              #     Required. Project and location in which the workflow should be created.
              #     Format:  projects/\\{project}/locations/\\{location}
              #   @param workflow [::Google::Cloud::Workflows::V1::Workflow, ::Hash]
              #     Required. Workflow to be created.
              #   @param workflow_id [::String]
              #     Required. The ID of the workflow to be created. It has to fulfill the
              #     following requirements:
              #
              #     * Must contain only letters, numbers, underscores and hyphens.
              #     * Must start with a letter.
              #     * Must be between 1-64 characters.
              #     * Must end with a number or a letter.
              #     * Must be unique within the customer project and location.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def create_workflow request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::V1::CreateWorkflowRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.create_workflow.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.create_workflow.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.create_workflow.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @workflows_stub.create_workflow request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Deletes a workflow with the specified name.
              # This method also cancels and deletes all running executions of the
              # workflow.
              #
              # @overload delete_workflow(request, options = nil)
              #   Pass arguments to `delete_workflow` via a request object, either of type
              #   {::Google::Cloud::Workflows::V1::DeleteWorkflowRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::V1::DeleteWorkflowRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload delete_workflow(name: nil)
              #   Pass arguments to `delete_workflow` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param name [::String]
              #     Required. Name of the workflow to be deleted.
              #     Format: projects/\\{project}/locations/\\{location}/workflows/\\{workflow}
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def delete_workflow request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::V1::DeleteWorkflowRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.delete_workflow.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.delete_workflow.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.delete_workflow.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @workflows_stub.delete_workflow request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Updates an existing workflow.
              # Running this method has no impact on already running executions of the
              # workflow. A new revision of the workflow might be created as a result of a
              # successful update operation. In that case, the new revision is used
              # in new workflow executions.
              #
              # @overload update_workflow(request, options = nil)
              #   Pass arguments to `update_workflow` via a request object, either of type
              #   {::Google::Cloud::Workflows::V1::UpdateWorkflowRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Workflows::V1::UpdateWorkflowRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload update_workflow(workflow: nil, update_mask: nil)
              #   Pass arguments to `update_workflow` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param workflow [::Google::Cloud::Workflows::V1::Workflow, ::Hash]
              #     Required. Workflow to be updated.
              #   @param update_mask [::Google::Protobuf::FieldMask, ::Hash]
              #     List of fields to be updated. If not present, the entire workflow
              #     will be updated.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Gapic::Operation]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Gapic::Operation]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              def update_workflow request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Workflows::V1::UpdateWorkflowRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.update_workflow.metadata.to_h

                # Set x-goog-api-client and x-goog-user-project headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Workflows::V1::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.update_workflow.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.update_workflow.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @workflows_stub.update_workflow request, options do |result, operation|
                  result = ::Gapic::Operation.new result, @operations_client, options: options
                  yield result, operation if block_given?
                  return result
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Workflows REST API.
              #
              # This class represents the configuration for Workflows REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Workflows::V1::Workflows::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # list_workflows to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Workflows::V1::Workflows::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_workflows.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Workflows::V1::Workflows::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.list_workflows.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   The hostname or hostname:port of the service endpoint.
              #   Defaults to `"workflows.googleapis.com"`.
              #   @return [::String]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              #
              class Configuration
                extend ::Gapic::Config

                DEFAULT_ENDPOINT = "workflows.googleapis.com"

                config_attr :endpoint,      DEFAULT_ENDPOINT, ::String
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil

                # @private
                # Overrides for http bindings for the RPCs of this service
                # are only used when this service is used as mixin, and only
                # by the host service.
                # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
                config_attr :bindings_override, {}, ::Hash, nil

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the Workflows API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `list_workflows`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :list_workflows
                  ##
                  # RPC-specific configuration for `get_workflow`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :get_workflow
                  ##
                  # RPC-specific configuration for `create_workflow`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :create_workflow
                  ##
                  # RPC-specific configuration for `delete_workflow`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :delete_workflow
                  ##
                  # RPC-specific configuration for `update_workflow`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :update_workflow

                  # @private
                  def initialize parent_rpcs = nil
                    list_workflows_config = parent_rpcs.list_workflows if parent_rpcs.respond_to? :list_workflows
                    @list_workflows = ::Gapic::Config::Method.new list_workflows_config
                    get_workflow_config = parent_rpcs.get_workflow if parent_rpcs.respond_to? :get_workflow
                    @get_workflow = ::Gapic::Config::Method.new get_workflow_config
                    create_workflow_config = parent_rpcs.create_workflow if parent_rpcs.respond_to? :create_workflow
                    @create_workflow = ::Gapic::Config::Method.new create_workflow_config
                    delete_workflow_config = parent_rpcs.delete_workflow if parent_rpcs.respond_to? :delete_workflow
                    @delete_workflow = ::Gapic::Config::Method.new delete_workflow_config
                    update_workflow_config = parent_rpcs.update_workflow if parent_rpcs.respond_to? :update_workflow
                    @update_workflow = ::Gapic::Config::Method.new update_workflow_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
