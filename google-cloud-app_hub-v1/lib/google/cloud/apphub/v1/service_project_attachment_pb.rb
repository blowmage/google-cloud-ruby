# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/apphub/v1/service_project_attachment.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/field_info_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n7google/cloud/apphub/v1/service_project_attachment.proto\x12\x16google.cloud.apphub.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x1bgoogle/api/field_info.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xae\x04\n\x18ServiceProjectAttachment\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x08\x12O\n\x0fservice_project\x18\x02 \x01(\tB6\xe0\x41\x02\xe0\x41\x05\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x18\n\x03uid\x18\x04 \x01(\tB\x0b\xe0\x41\x03\xe2\x8c\xcf\xd7\x08\x02\x08\x01\x12J\n\x05state\x18\x05 \x01(\x0e\x32\x36.google.cloud.apphub.v1.ServiceProjectAttachment.StateB\x03\xe0\x41\x03\"F\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x43REATING\x10\x01\x12\n\n\x06\x41\x43TIVE\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03:\xc9\x01\xea\x41\xc5\x01\n.apphub.googleapis.com/ServiceProjectAttachment\x12^projects/{project}/locations/{location}/serviceProjectAttachments/{service_project_attachment}*\x19serviceProjectAttachments2\x18serviceProjectAttachmentB\xbf\x01\n\x1a\x63om.google.cloud.apphub.v1B\x1dServiceProjectAttachmentProtoP\x01Z2cloud.google.com/go/apphub/apiv1/apphubpb;apphubpb\xaa\x02\x16Google.Cloud.AppHub.V1\xca\x02\x16Google\\Cloud\\AppHub\\V1\xea\x02\x19Google::Cloud::AppHub::V1b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
    module AppHub
      module V1
        ServiceProjectAttachment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ServiceProjectAttachment").msgclass
        ServiceProjectAttachment::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.apphub.v1.ServiceProjectAttachment.State").enummodule
      end
    end
  end
end
