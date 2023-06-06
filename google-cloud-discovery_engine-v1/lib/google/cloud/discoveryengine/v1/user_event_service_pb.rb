# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/discoveryengine/v1/user_event_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/httpbody_pb'
require 'google/api/resource_pb'
require 'google/cloud/discoveryengine/v1/import_config_pb'
require 'google/cloud/discoveryengine/v1/user_event_pb'
require 'google/longrunning/operations_pb'


descriptor_data = "\n8google/cloud/discoveryengine/v1/user_event_service.proto\x12\x1fgoogle.cloud.discoveryengine.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/httpbody.proto\x1a\x19google/api/resource.proto\x1a\x33google/cloud/discoveryengine/v1/import_config.proto\x1a\x30google/cloud/discoveryengine/v1/user_event.proto\x1a#google/longrunning/operations.proto\"\xb2\x01\n\x15WriteUserEventRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12H\n\nuser_event\x18\x02 \x01(\x0b\x32*.google.cloud.discoveryengine.v1.UserEventB\x03\xe0\x41\x02H\x00\x88\x01\x01\x42\r\n\x0b_user_event\"\xa8\x01\n\x17\x43ollectUserEventRequest\x12@\n\x06parent\x18\x01 \x01(\tB0\xe0\x41\x02\xfa\x41*\n(discoveryengine.googleapis.com/DataStore\x12\x17\n\nuser_event\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x10\n\x03uri\x18\x03 \x01(\tH\x00\x88\x01\x01\x12\x10\n\x03\x65ts\x18\x04 \x01(\x03H\x01\x88\x01\x01\x42\x06\n\x04_uriB\x06\n\x04_ets2\xab\x08\n\x10UserEventService\x12\xac\x02\n\x0eWriteUserEvent\x12\x36.google.cloud.discoveryengine.v1.WriteUserEventRequest\x1a*.google.cloud.discoveryengine.v1.UserEvent\"\xb5\x01\x82\xd3\xe4\x93\x02\xae\x01\"A/v1/{parent=projects/*/locations/*/dataStores/*}/userEvents:write:\nuser_eventZ]\"O/v1/{parent=projects/*/locations/*/collections/*/dataStores/*}/userEvents:write:\nuser_event\x12\x86\x02\n\x10\x43ollectUserEvent\x12\x38.google.cloud.discoveryengine.v1.CollectUserEventRequest\x1a\x14.google.api.HttpBody\"\xa1\x01\x82\xd3\xe4\x93\x02\x9a\x01\x12\x43/v1/{parent=projects/*/locations/*/dataStores/*}/userEvents:collectZS\x12Q/v1/{parent=projects/*/locations/*/collections/*/dataStores/*}/userEvents:collect\x12\x8a\x03\n\x10ImportUserEvents\x12\x38.google.cloud.discoveryengine.v1.ImportUserEventsRequest\x1a\x1d.google.longrunning.Operation\"\x9c\x02\x82\xd3\xe4\x93\x02\x9e\x01\"B/v1/{parent=projects/*/locations/*/dataStores/*}/userEvents:import:\x01*ZU\"P/v1/{parent=projects/*/locations/*/collections/*/dataStores/*}/userEvents:import:\x01*\xca\x41t\n8google.cloud.discoveryengine.v1.ImportUserEventsResponse\x12\x38google.cloud.discoveryengine.v1.ImportUserEventsMetadata\x1aR\xca\x41\x1e\x64iscoveryengine.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x88\x02\n#com.google.cloud.discoveryengine.v1B\x15UserEventServiceProtoP\x01ZMcloud.google.com/go/discoveryengine/apiv1/discoveryenginepb;discoveryenginepb\xa2\x02\x0f\x44ISCOVERYENGINE\xaa\x02\x1fGoogle.Cloud.DiscoveryEngine.V1\xca\x02\x1fGoogle\\Cloud\\DiscoveryEngine\\V1\xea\x02\"Google::Cloud::DiscoveryEngine::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.cloud.discoveryengine.v1.UserEvent", "google/cloud/discoveryengine/v1/user_event.proto"],
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
    module DiscoveryEngine
      module V1
        WriteUserEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.WriteUserEventRequest").msgclass
        CollectUserEventRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.discoveryengine.v1.CollectUserEventRequest").msgclass
      end
    end
  end
end