# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/connectors/v1/connectors_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/cloud/connectors/v1/common_pb'
require 'google/cloud/connectors/v1/connection_pb'
require 'google/cloud/connectors/v1/connector_pb'
require 'google/cloud/connectors/v1/connector_version_pb'
require 'google/cloud/connectors/v1/provider_pb'
require 'google/cloud/connectors/v1/runtime_pb'
require 'google/cloud/connectors/v1/settings_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n3google/cloud/connectors/v1/connectors_service.proto\x12\x1agoogle.cloud.connectors.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\'google/cloud/connectors/v1/common.proto\x1a+google/cloud/connectors/v1/connection.proto\x1a*google/cloud/connectors/v1/connector.proto\x1a\x32google/cloud/connectors/v1/connector_version.proto\x1a)google/cloud/connectors/v1/provider.proto\x1a(google/cloud/connectors/v1/runtime.proto\x1a)google/cloud/connectors/v1/settings.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto2\xe9\x1c\n\nConnectors\x12\xbc\x01\n\x0fListConnections\x12\x32.google.cloud.connectors.v1.ListConnectionsRequest\x1a\x33.google.cloud.connectors.v1.ListConnectionsResponse\"@\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x31\x12//v1/{parent=projects/*/locations/*}/connections\x12\xa9\x01\n\rGetConnection\x12\x30.google.cloud.connectors.v1.GetConnectionRequest\x1a&.google.cloud.connectors.v1.Connection\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/connections/*}\x12\xf0\x01\n\x10\x43reateConnection\x12\x33.google.cloud.connectors.v1.CreateConnectionRequest\x1a\x1d.google.longrunning.Operation\"\x87\x01\xca\x41\x1f\n\nConnection\x12\x11OperationMetadata\xda\x41\x1fparent,connection,connection_id\x82\xd3\xe4\x93\x02=\"//v1/{parent=projects/*/locations/*}/connections:\nconnection\x12\xf2\x01\n\x10UpdateConnection\x12\x33.google.cloud.connectors.v1.UpdateConnectionRequest\x1a\x1d.google.longrunning.Operation\"\x89\x01\xca\x41\x1f\n\nConnection\x12\x11OperationMetadata\xda\x41\x16\x63onnection,update_mask\x82\xd3\xe4\x93\x02H2:/v1/{connection.name=projects/*/locations/*/connections/*}:\nconnection\x12\xd3\x01\n\x10\x44\x65leteConnection\x12\x33.google.cloud.connectors.v1.DeleteConnectionRequest\x1a\x1d.google.longrunning.Operation\"k\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31*//v1/{name=projects/*/locations/*/connections/*}\x12\xb4\x01\n\rListProviders\x12\x30.google.cloud.connectors.v1.ListProvidersRequest\x1a\x31.google.cloud.connectors.v1.ListProvidersResponse\">\xda\x41\x06parent\x82\xd3\xe4\x93\x02/\x12-/v1/{parent=projects/*/locations/*}/providers\x12\xa1\x01\n\x0bGetProvider\x12..google.cloud.connectors.v1.GetProviderRequest\x1a$.google.cloud.connectors.v1.Provider\"<\xda\x41\x04name\x82\xd3\xe4\x93\x02/\x12-/v1/{name=projects/*/locations/*/providers/*}\x12\xc4\x01\n\x0eListConnectors\x12\x31.google.cloud.connectors.v1.ListConnectorsRequest\x1a\x32.google.cloud.connectors.v1.ListConnectorsResponse\"K\xda\x41\x06parent\x82\xd3\xe4\x93\x02<\x12:/v1/{parent=projects/*/locations/*/providers/*}/connectors\x12\xb1\x01\n\x0cGetConnector\x12/.google.cloud.connectors.v1.GetConnectorRequest\x1a%.google.cloud.connectors.v1.Connector\"I\xda\x41\x04name\x82\xd3\xe4\x93\x02<\x12:/v1/{name=projects/*/locations/*/providers/*/connectors/*}\x12\xe4\x01\n\x15ListConnectorVersions\x12\x38.google.cloud.connectors.v1.ListConnectorVersionsRequest\x1a\x39.google.cloud.connectors.v1.ListConnectorVersionsResponse\"V\xda\x41\x06parent\x82\xd3\xe4\x93\x02G\x12\x45/v1/{parent=projects/*/locations/*/providers/*/connectors/*}/versions\x12\xd1\x01\n\x13GetConnectorVersion\x12\x36.google.cloud.connectors.v1.GetConnectorVersionRequest\x1a,.google.cloud.connectors.v1.ConnectorVersion\"T\xda\x41\x04name\x82\xd3\xe4\x93\x02G\x12\x45/v1/{name=projects/*/locations/*/providers/*/connectors/*/versions/*}\x12\xec\x01\n\x1bGetConnectionSchemaMetadata\x12>.google.cloud.connectors.v1.GetConnectionSchemaMetadataRequest\x1a\x34.google.cloud.connectors.v1.ConnectionSchemaMetadata\"W\xda\x41\x04name\x82\xd3\xe4\x93\x02J\x12H/v1/{name=projects/*/locations/*/connections/*/connectionSchemaMetadata}\x12\x99\x02\n\x1fRefreshConnectionSchemaMetadata\x12\x42.google.cloud.connectors.v1.RefreshConnectionSchemaMetadataRequest\x1a\x1d.google.longrunning.Operation\"\x92\x01\xca\x41-\n\x18\x43onnectionSchemaMetadata\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02U\"P/v1/{name=projects/*/locations/*/connections/*/connectionSchemaMetadata}:refresh:\x01*\x12\xee\x01\n\x18ListRuntimeEntitySchemas\x12;.google.cloud.connectors.v1.ListRuntimeEntitySchemasRequest\x1a<.google.cloud.connectors.v1.ListRuntimeEntitySchemasResponse\"W\xda\x41\x06parent\x82\xd3\xe4\x93\x02H\x12\x46/v1/{parent=projects/*/locations/*/connections/*}/runtimeEntitySchemas\x12\xee\x01\n\x18ListRuntimeActionSchemas\x12;.google.cloud.connectors.v1.ListRuntimeActionSchemasRequest\x1a<.google.cloud.connectors.v1.ListRuntimeActionSchemasResponse\"W\xda\x41\x06parent\x82\xd3\xe4\x93\x02H\x12\x46/v1/{parent=projects/*/locations/*/connections/*}/runtimeActionSchemas\x12\xb2\x01\n\x10GetRuntimeConfig\x12\x33.google.cloud.connectors.v1.GetRuntimeConfigRequest\x1a).google.cloud.connectors.v1.RuntimeConfig\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/*/runtimeConfig}\x12\xaf\x01\n\x11GetGlobalSettings\x12\x34.google.cloud.connectors.v1.GetGlobalSettingsRequest\x1a$.google.cloud.connectors.v1.Settings\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v1/{name=projects/*/locations/global/settings}\x1aM\xca\x41\x19\x63onnectors.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformBz\n\x1e\x63om.google.cloud.connectors.v1B\x16\x43onnectorsServiceProtoP\x01Z>cloud.google.com/go/connectors/apiv1/connectorspb;connectorspbb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Connectors
      module V1
      end
    end
  end
end
