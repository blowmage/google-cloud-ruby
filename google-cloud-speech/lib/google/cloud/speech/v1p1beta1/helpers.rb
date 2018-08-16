# Copyright 2018 Google LLC
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

require "google/cloud/speech/v1p1beta1/speech_client"
require "google/cloud/speech/v1p1beta1/stream"

module Google
  module Cloud
    module Speech
      module V1p1beta1
        class SpeechClient
          # Performs bidirectional streaming speech recognition: receive results
          # while sending audio. This method is only available via the gRPC API
          # (not REST).
          #
          # @param [Google::Cloud::Speech::V1p1beta1::StreamingRecognitionConfig,
          #     Hash] streaming_config
          #   Provides information to the recognizer that specifies how to
          #   process the request.
          #   A hash of the same form as
          #   +Google::Cloud::Speech::V1p1beta1::StreamingRecognitionConfig+
          #   can also be provided.
          # @param [Google::Gax::CallOptions] options
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @return [Google::Cloud::Speech::V1p1beta1::Stream]
          #   An object that streams the requests and responses.
          #
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          #
          # @example
          #   require "google/cloud/speech"
          #
          #   speech_client = Google::Cloud::Speech.new version: :v1p1beta1
          #   streaming_config = {
          #     config: {
          #       encoding: :linear16,
          #       language_code: "en-US",
          #       sample_rate_hertz: 16000
          #     }
          #   }
          #   stream = speech_client.streaming_recognize(streaming_config)
          #
          #   # Stream 5 seconds of audio from the microphone
          #   # Actual implementation of microphone input varies by platform
          #   5.times do
          #     stream.send MicrophoneInput.read(32000)
          #   end
          #
          #   stream.stop
          #   stream.wait_until_complete!
          #
          #   results = stream.results
          #   result = results.first.alternatives.first
          #   result.transcript #=> "how old is the Brooklyn Bridge"
          #   result.confidence #=> 0.9826789498329163
          #
          def streaming_recognize streaming_config, options: nil
            if streaming_config.is_a?(::Hash) &&
               streaming_config[:config] &&
               streaming_config[:config][:encoding]
              streaming_config[:config][:encoding] =
                streaming_config[:config][:encoding].upcase
            end
            V1p1beta1::Stream.new(
              streaming_config,
              proc do |reqs|
                request_protos = reqs.lazy.map do |req|
                  Google::Gax.to_proto(
                    req,
                    Google::Cloud::Speech::V1p1beta1::StreamingRecognizeRequest
                  )
                end
                @streaming_recognize.call(request_protos, options)
              end
            )
          end

          ##
          # Gets the latest state of a long-running operation. Clients can use
          # this method to poll the operation result at intervals as recommended
          # by the API service.
          #
          # @param name [String]
          #   The name of the operation resource.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @return [Google::Gax::Operation]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/speech"
          #
          #   speech_client = Google::Cloud::Speech.new version: :v1p1beta1
          #
          #   op = speech_client.get_operation "-"
          #
          #   # Process error operations.
          #   log_error op.error if op.error?
          #
          #   if op.done?
          #     # Process completed operations.
          #     log_finished op.response, op.metadata
          #   else
          #     # Process pending operations.
          #     log_pending op.name, op.metadata
          #   end
          #
          def get_operation name, options: nil
            proto_op = @operations_client.get_operation name, options: options
            wrap_proto_op_with_gax_op proto_op, options
          end

          ##
          # Lists operations that match the specified filter in the request. If
          # the server doesn't support this method, it returns `UNIMPLEMENTED`.
          #
          # NOTE: the `name` binding below allows API services to override the
          # binding to use different resource name schemes, such as
          # `users/*/operations`.
          #
          # @param name [String]
          #   The name of the operation collection.
          # @param filter [String]
          #   The standard list filter.
          # @param page_size [Integer]
          #   The maximum number of resources contained in the underlying API
          #   response. If page streaming is performed per-resource, this
          #   parameter does not affect the return value. If page streaming is
          #   performed per-page, this determines the maximum number of
          #   resources in a page.
          # @param options [Google::Gax::CallOptions]
          #   Overrides the default settings for this call, e.g, timeout,
          #   retries, etc.
          # @return [Google::Gax::PagedEnumerable<Google::Gax::Operation>]
          #   An enumerable of Google::Gax::Operation instances. See
          #   Google::Gax::PagedEnumerable documentation for other operations
          #   such as per-page iteration or access to the response object.
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   require "google/cloud/speech"
          #
          #   speech_client = Google::Cloud::Speech.new version: :v1p1beta1
          #
          #   # List all callbacks.
          #   speech_client.list_operations "*", "" do |op|
          #     # Process error operations.
          #     log_error op.error if op.error?
          #
          #     if op.done?
          #       # Process completed operations.
          #       log_finished op.response, op.metadata
          #     else
          #       # Process pending operations.
          #       log_pending op.name, op.metadata
          #     end
          #   end
          #
          def list_operations name, filter, page_size: nil, options: nil
            paged_enum = @operations_client.list_operations \
              name, filter, page_size: page_size, options: options
            paged_enum.lazy.map do |proto_op|
              wrap_proto_op_with_gax_op proto_op, options
            end
          end

          protected

          ##
          # @private
          # Lookup the Protobuf class from the type URL
          def wrap_proto_op_with_gax_op proto_op, options
            Google::Gax::Operation.new(
              proto_op,
              @operations_client,
              get_type_class_from_proto_any(proto_op.response),
              get_type_class_from_proto_any(proto_op.metadata),
              call_options: options
            )
          end

          ##
          # @private
          # Lookup the Protobuf class from the type URL
          def get_type_class_from_proto_any proto_any
            return Google::Protobuf::Any if proto_any.nil?

            uri = URI.parse proto_any.type_url
            type = uri.path.split("/".freeze).last
            desc = Google::Protobuf::DescriptorPool.generated_pool.lookup type
            return desc.msgclass if desc

            # default is Any
            Google::Protobuf::Any
          end
        end
      end
    end
  end
end
