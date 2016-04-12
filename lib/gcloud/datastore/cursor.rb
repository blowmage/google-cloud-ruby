# Copyright 2016 Google Inc. All rights reserved.
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


module Gcloud
  module Datastore
    ##
    # # Cursor
    #
    # Cursor is a point in query results. Cursors are returned in QueryResults.
    #
    # @example
    #   require "gcloud"
    #
    #   gcloud = Gcloud.new
    #   dataset = gcloud.datastore
    #
    #   query = dataset.query("Task").
    #     where("done", "=", false)
    #
    #   tasks = dataset.run query
    #   tasks.cursor #=> Cursor
    #
    class Cursor
      # Base64 encoded array of bytes
      def initialize cursor
        @cursor = cursor
      end

      # Base64 encoded array of bytes
      def to_s
        @cursor
      end

      # @private
      def inspect
        "#{self.class}(#{@cursor})"
      end

      # @private
      def == other
        return false unless other.is_a? Cursor
        @cursor == other.to_s
      end

      # @private
      def <=> other
        return -1 unless other.is_a? Cursor
        @cursor <=> other.to_s
      end

      # @private byte array as a string
      def to_grpc
        GRPCUtils.decode_bytes(@cursor)
      end

      # @private byte array as a string
      def self.from_grpc grpc
        grpc = String grpc
        return nil if grpc.empty?
        new GRPCUtils.encode_bytes(grpc)
      end
    end
  end
end
