# Copyright 2014 Google Inc. All rights reserved.
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


require "delegate"

module Gcloud
  module Datastore
    class Dataset
      ##
      # QueryResults is a special case Array with additional values.
      # A QueryResults object is returned from Dataset#run and contains
      # the Entities from the query as well as the query's cursor and
      # more_results value.
      #
      # Please be cautious when treating the QueryResults as an Array.
      # Many common Array methods will return a new Array instance.
      #
      # @example
      #   tasks = datastore.run query
      #   tasks.size #=> 3
      #   tasks.cursor #=> Gcloud::Datastore::Cursor(c3VwZXJhd2Vzb21lIQ)
      #
      # @example Caution, many Array methods will return a new Array instance:
      #   tasks = datastore.run query
      #   tasks.size #=> 3
      #   tasks.end_cursor #=> Gcloud::Datastore::Cursor(c3VwZXJhd2Vzb21lIQ)
      #   descriptions = tasks.map { |task| task["description"] }
      #   descriptions.size #=> 3
      #   descriptions.cursor #=> NoMethodError
      #
      class QueryResults < DelegateClass(::Array)
        ##
        # The end_cursor of the QueryResults.
        #
        # @return [Gcloud::Datastore::Cursor]
        attr_reader :end_cursor
        alias_method :cursor, :end_cursor

        ##
        # The state of the query after the current batch.
        #
        # Expected values are:
        #
        # * `:NOT_FINISHED`
        # * `:MORE_RESULTS_AFTER_LIMIT`
        # * `:MORE_RESULTS_AFTER_CURSOR`
        # * `:NO_MORE_RESULTS`
        attr_reader :more_results

        ##
        # Convenience method for determining id the more_results value
        # is `:NOT_FINISHED`
        def not_finished?
          more_results == :NOT_FINISHED
        end

        ##
        # Convenience method for determining id the more_results value
        # is `:MORE_RESULTS_AFTER_LIMIT`
        def more_after_limit?
          more_results == :MORE_RESULTS_AFTER_LIMIT
        end

        ##
        # Convenience method for determining id the more_results value
        # is `:MORE_RESULTS_AFTER_CURSOR`
        def more_after_cursor?
          more_results == :MORE_RESULTS_AFTER_CURSOR
        end

        ##
        # Convenience method for determining id the more_results value
        # is `:NO_MORE_RESULTS`
        def no_more?
          more_results == :NO_MORE_RESULTS
        end

        ##
        # Create a new QueryResults with an array of values.
        def initialize arr = [], end_cursor = nil, more_results = nil
          super arr
          @end_cursor = end_cursor
          @more_results = more_results
        end
      end
    end
  end
end
