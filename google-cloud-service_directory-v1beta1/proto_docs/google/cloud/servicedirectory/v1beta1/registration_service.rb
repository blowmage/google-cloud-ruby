# frozen_string_literal: true

# Copyright 2020 Google LLC
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


module Google
  module Cloud
    module ServiceDirectory
      module V1beta1
        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#create_namespace RegistrationService.CreateNamespace}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project and location the namespace
        #     will be created in.
        # @!attribute [rw] namespace_id
        #   @return [::String]
        #     Required. The Resource ID must be 1-63 characters long, and comply with
        #     <a href="https://www.ietf.org/rfc/rfc1035.txt" target="_blank">RFC1035</a>.
        #     Specifically, the name must be 1-63 characters long and match the regular
        #     expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first
        #     character must be a lowercase letter, and all following characters must
        #     be a dash, lowercase letter, or digit, except the last character, which
        #     cannot be a dash.
        # @!attribute [rw] namespace
        #   @return [::Google::Cloud::ServiceDirectory::V1beta1::Namespace]
        #     Required. A namespace with initial fields set.
        class CreateNamespaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#list_namespaces RegistrationService.ListNamespaces}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the project and location whose namespaces
        #     you'd like to list.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return. The default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous List request,
        #     if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter to list results by.
        #
        #     General `filter` string syntax:
        #     `<field> <operator> <value> (<logical connector>)`
        #
        #     *   `<field>` can be `name`, `labels.<key>` for map field, or
        #     `attributes.<field>` for attributes field
        #     *   `<operator>` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:`
        #         means `HAS`, and is roughly the same as `=`
        #     *   `<value>` must be the same data type as field
        #     *   `<logical connector>` can be `AND`, `OR`, `NOT`
        #
        #     Examples of valid filters:
        #
        #     *   `labels.owner` returns namespaces that have a label with the key
        #         `owner`, this is the same as `labels:owner`
        #     *   `labels.owner=sd` returns namespaces that have key/value `owner=sd`
        #     *   `name>projects/my-project/locations/us-east1/namespaces/namespace-c`
        #         returns namespaces that have name that is alphabetically later than the
        #         string, so "namespace-e" is returned but "namespace-a" is not
        #     *   `labels.owner!=sd AND labels.foo=bar` returns namespaces that have
        #         `owner` in label key but value is not `sd` AND have key/value `foo=bar`
        #     *   `doesnotexist.foo=bar` returns an empty list. Note that namespace
        #         doesn't have a field called "doesnotexist". Since the filter does not
        #         match any namespaces, it returns no results
        #     *   `attributes.managed_registration=true` returns namespaces that are
        #         managed by a GCP product or service
        #
        #     For more information about filtering, see
        #     [API Filtering](https://aip.dev/160).
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. The order to list results by.
        #
        #     General `order_by` string syntax: `<field> (<asc|desc>) (,)`
        #
        #     *   `<field>` allows value: `name`
        #     *   `<asc|desc>` ascending or descending order by `<field>`. If this is
        #         left blank, `asc` is used
        #
        #     Note that an empty `order_by` string results in default order, which is
        #     order by `name` in ascending order.
        class ListNamespacesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#list_namespaces RegistrationService.ListNamespaces}.
        # @!attribute [rw] namespaces
        #   @return [::Array<::Google::Cloud::ServiceDirectory::V1beta1::Namespace>]
        #     The list of namespaces.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListNamespacesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#get_namespace RegistrationService.GetNamespace}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the namespace to retrieve.
        class GetNamespaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#update_namespace RegistrationService.UpdateNamespace}.
        # @!attribute [rw] namespace
        #   @return [::Google::Cloud::ServiceDirectory::V1beta1::Namespace]
        #     Required. The updated namespace.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. List of fields to be updated in this request.
        class UpdateNamespaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#delete_namespace RegistrationService.DeleteNamespace}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the namespace to delete.
        class DeleteNamespaceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#create_service RegistrationService.CreateService}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the namespace this service will belong to.
        # @!attribute [rw] service_id
        #   @return [::String]
        #     Required. The Resource ID must be 1-63 characters long, and comply with
        #     <a href="https://www.ietf.org/rfc/rfc1035.txt" target="_blank">RFC1035</a>.
        #     Specifically, the name must be 1-63 characters long and match the regular
        #     expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first
        #     character must be a lowercase letter, and all following characters must
        #     be a dash, lowercase letter, or digit, except the last character, which
        #     cannot be a dash.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::ServiceDirectory::V1beta1::Service]
        #     Required. A service  with initial fields set.
        class CreateServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#list_services RegistrationService.ListServices}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the namespace whose services you'd
        #     like to list.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return. The default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous List request,
        #     if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter to list results by.
        #
        #     General `filter` string syntax:
        #     `<field> <operator> <value> (<logical connector>)`
        #
        #     *   `<field>` can be `name` or `metadata.<key>` for map field
        #     *   `<operator>` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:`
        #         means `HAS`, and is roughly the same as `=`
        #     *   `<value>` must be the same data type as field
        #     *   `<logical connector>` can be `AND`, `OR`, `NOT`
        #
        #     Examples of valid filters:
        #
        #     *   `metadata.owner` returns services that have a metadata with the key
        #         `owner`, this is the same as `metadata:owner`
        #     *   `metadata.protocol=gRPC` returns services that have key/value
        #         `protocol=gRPC`
        #     *
        #     `name>projects/my-project/locations/us-east1/namespaces/my-namespace/services/service-c`
        #         returns services that have name that is alphabetically later than the
        #         string, so "service-e" is returned but "service-a" is not
        #     *   `metadata.owner!=sd AND metadata.foo=bar` returns services that have
        #         `owner` in metadata key but value is not `sd` AND have key/value
        #         `foo=bar`
        #     *   `doesnotexist.foo=bar` returns an empty list. Note that service
        #         doesn't have a field called "doesnotexist". Since the filter does not
        #         match any services, it returns no results
        #     *   `attributes.managed_registration=true` returns services that are
        #     managed
        #         by a GCP product or service
        #
        #     For more information about filtering, see
        #     [API Filtering](https://aip.dev/160).
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. The order to list results by.
        #
        #     General `order_by` string syntax: `<field> (<asc|desc>) (,)`
        #
        #     *   `<field>` allows value: `name`
        #     *   `<asc|desc>` ascending or descending order by `<field>`. If this is
        #         left blank, `asc` is used
        #
        #     Note that an empty `order_by` string results in default order, which is
        #     order by `name` in ascending order.
        class ListServicesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#list_services RegistrationService.ListServices}.
        # @!attribute [rw] services
        #   @return [::Array<::Google::Cloud::ServiceDirectory::V1beta1::Service>]
        #     The list of services.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListServicesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#get_service RegistrationService.GetService}.
        # This should not be used for looking up a service. Instead, use the `resolve`
        # method as it contains all endpoints and associated metadata.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the service to get.
        class GetServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#update_service RegistrationService.UpdateService}.
        # @!attribute [rw] service
        #   @return [::Google::Cloud::ServiceDirectory::V1beta1::Service]
        #     Required. The updated service.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. List of fields to be updated in this request.
        class UpdateServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#delete_service RegistrationService.DeleteService}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the service to delete.
        class DeleteServiceRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#create_endpoint RegistrationService.CreateEndpoint}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the service that this endpoint provides.
        # @!attribute [rw] endpoint_id
        #   @return [::String]
        #     Required. The Resource ID must be 1-63 characters long, and comply with
        #     <a href="https://www.ietf.org/rfc/rfc1035.txt" target="_blank">RFC1035</a>.
        #     Specifically, the name must be 1-63 characters long and match the regular
        #     expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first
        #     character must be a lowercase letter, and all following characters must
        #     be a dash, lowercase letter, or digit, except the last character, which
        #     cannot be a dash.
        # @!attribute [rw] endpoint
        #   @return [::Google::Cloud::ServiceDirectory::V1beta1::Endpoint]
        #     Required. A endpoint with initial fields set.
        class CreateEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#list_endpoints RegistrationService.ListEndpoints}.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The resource name of the service whose endpoints you'd like to
        #     list.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Optional. The maximum number of items to return. The default value is 100.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     Optional. The next_page_token value returned from a previous List request,
        #     if any.
        # @!attribute [rw] filter
        #   @return [::String]
        #     Optional. The filter to list results by.
        #
        #     General `filter` string syntax:
        #     `<field> <operator> <value> (<logical connector>)`
        #
        #     *   `<field>` can be `name`, `address`, `port`, `metadata.<key>` for map
        #         field, or `attributes.<field>` for attributes field
        #     *   `<operator>` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:`
        #         means `HAS`, and is roughly the same as `=`
        #     *   `<value>` must be the same data type as field
        #     *   `<logical connector>` can be `AND`, `OR`, `NOT`
        #
        #     Examples of valid filters:
        #
        #     *   `metadata.owner` returns endpoints that have a metadata with the key
        #         `owner`, this is the same as `metadata:owner`
        #     *   `metadata.protocol=gRPC` returns endpoints that have key/value
        #         `protocol=gRPC`
        #     *   `address=192.108.1.105` returns endpoints that have this address
        #     *   `port>8080` returns endpoints that have port number larger than 8080
        #     *
        #     `name>projects/my-project/locations/us-east1/namespaces/my-namespace/services/my-service/endpoints/endpoint-c`
        #         returns endpoints that have name that is alphabetically later than the
        #         string, so "endpoint-e" is returned but "endpoint-a" is not
        #     *   `metadata.owner!=sd AND metadata.foo=bar` returns endpoints that have
        #         `owner` in metadata key but value is not `sd` AND have key/value
        #          `foo=bar`
        #     *   `doesnotexist.foo=bar` returns an empty list. Note that endpoint
        #         doesn't have a field called "doesnotexist". Since the filter does not
        #         match any endpoints, it returns no results
        #     *   `attributes.kubernetes_resource_type=KUBERNETES_RESOURCE_TYPE_CLUSTER_
        #         IP` returns endpoints with the corresponding kubernetes_resource_type
        #
        #     For more information about filtering, see
        #     [API Filtering](https://aip.dev/160).
        # @!attribute [rw] order_by
        #   @return [::String]
        #     Optional. The order to list results by.
        #
        #     General `order_by` string syntax: `<field> (<asc|desc>) (,)`
        #
        #     *   `<field>` allows values: `name`, `address`, `port`
        #     *   `<asc|desc>` ascending or descending order by `<field>`. If this is
        #         left blank, `asc` is used
        #
        #     Note that an empty `order_by` string results in default order, which is
        #     order by `name` in ascending order.
        class ListEndpointsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#list_endpoints RegistrationService.ListEndpoints}.
        # @!attribute [rw] endpoints
        #   @return [::Array<::Google::Cloud::ServiceDirectory::V1beta1::Endpoint>]
        #     The list of endpoints.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     Token to retrieve the next page of results, or empty if there are no
        #     more results in the list.
        class ListEndpointsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#get_endpoint RegistrationService.GetEndpoint}.
        # This should not be used to lookup endpoints at runtime. Instead, use
        # the `resolve` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the endpoint to get.
        class GetEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#update_endpoint RegistrationService.UpdateEndpoint}.
        # @!attribute [rw] endpoint
        #   @return [::Google::Cloud::ServiceDirectory::V1beta1::Endpoint]
        #     Required. The updated endpoint.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required. List of fields to be updated in this request.
        class UpdateEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request message for
        # {::Google::Cloud::ServiceDirectory::V1beta1::RegistrationService::Client#delete_endpoint RegistrationService.DeleteEndpoint}.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the endpoint to delete.
        class DeleteEndpointRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end
