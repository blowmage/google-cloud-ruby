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

require "google/cloud/privatecatalog/v1beta1/private_catalog_pb"

module Google
  module Cloud
    module PrivateCatalog
      module V1beta1
        module PrivateCatalog
          module Rest
            ##
            # REST service stub for the PrivateCatalog service.
            # Service stub contains baseline method implementations
            # including transcoding, making the REST call, and deserialing the response.
            #
            class ServiceStub
              def initialize endpoint:, endpoint_template:, universe_domain:, credentials:
                # These require statements are intentionally placed here to initialize
                # the REST modules only when it's required.
                require "gapic/rest"

                @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint,
                                                             endpoint_template: endpoint_template,
                                                             universe_domain: universe_domain,
                                                             credentials: credentials,
                                                             numeric_enums: true,
                                                             raise_faraday_errors: false
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @client_stub.universe_domain
              end

              ##
              # Baseline implementation for the search_catalogs REST call
              #
              # @param request_pb [::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsResponse]
              #   A result object deserialized from the server's reply
              def search_catalogs request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_search_catalogs_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the search_products REST call
              #
              # @param request_pb [::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsResponse]
              #   A result object deserialized from the server's reply
              def search_products request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_search_products_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # Baseline implementation for the search_versions REST call
              #
              # @param request_pb [::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsRequest]
              #   A request object representing the call parameters. Required.
              # @param options [::Gapic::CallOptions]
              #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsResponse]
              #   A result object deserialized from the server's reply
              def search_versions request_pb, options = nil
                raise ::ArgumentError, "request must be provided" if request_pb.nil?

                verb, uri, query_string_params, body = ServiceStub.transcode_search_versions_request request_pb
                query_string_params = if query_string_params.any?
                                        query_string_params.to_h { |p| p.split "=", 2 }
                                      else
                                        {}
                                      end

                response = @client_stub.make_http_request(
                  verb,
                  uri:     uri,
                  body:    body || "",
                  params:  query_string_params,
                  options: options
                )
                operation = ::Gapic::Rest::TransportOperation.new response
                result = ::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsResponse.decode_json response.body, ignore_unknown_fields: true

                yield result, operation if block_given?
                result
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the search_catalogs REST call
              #
              # @param request_pb [::Google::Cloud::PrivateCatalog::V1beta1::SearchCatalogsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_search_catalogs_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/catalogs:search",
                                                          matches: [
                                                            ["resource", %r{^projects/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/catalogs:search",
                                                          matches: [
                                                            ["resource", %r{^organizations/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/catalogs:search",
                                                          matches: [
                                                            ["resource", %r{^folders/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the search_products REST call
              #
              # @param request_pb [::Google::Cloud::PrivateCatalog::V1beta1::SearchProductsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_search_products_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/products:search",
                                                          matches: [
                                                            ["resource", %r{^projects/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/products:search",
                                                          matches: [
                                                            ["resource", %r{^organizations/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/products:search",
                                                          matches: [
                                                            ["resource", %r{^folders/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end

              ##
              # @private
              #
              # GRPC transcoding helper method for the search_versions REST call
              #
              # @param request_pb [::Google::Cloud::PrivateCatalog::V1beta1::SearchVersionsRequest]
              #   A request object representing the call parameters. Required.
              # @return [Array(String, [String, nil], Hash{String => String})]
              #   Uri, Body, Query string parameters
              def self.transcode_search_versions_request request_pb
                transcoder = Gapic::Rest::GrpcTranscoder.new
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/versions:search",
                                                          matches: [
                                                            ["resource", %r{^projects/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/versions:search",
                                                          matches: [
                                                            ["resource", %r{^organizations/[^/]+/?$}, false]
                                                          ]
                                                        )
                                                        .with_bindings(
                                                          uri_method: :get,
                                                          uri_template: "/v1beta1/{resource}/versions:search",
                                                          matches: [
                                                            ["resource", %r{^folders/[^/]+/?$}, false]
                                                          ]
                                                        )
                transcoder.transcode request_pb
              end
            end
          end
        end
      end
    end
  end
end
