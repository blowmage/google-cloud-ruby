# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/netapp/v1/storage_pool.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/netapp/v1/common_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n)google/cloud/netapp/v1/storage_pool.proto\x12\x16google.cloud.netapp.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a#google/cloud/netapp/v1/common.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"Q\n\x15GetStoragePoolRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!netapp.googleapis.com/StoragePool\"\x9e\x01\n\x17ListStoragePoolsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\x12!netapp.googleapis.com/StoragePool\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x10\n\x08order_by\x18\x04 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x05 \x01(\t\"\x84\x01\n\x18ListStoragePoolsResponse\x12:\n\rstorage_pools\x18\x01 \x03(\x0b\x32#.google.cloud.netapp.v1.StoragePool\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\xb6\x01\n\x18\x43reateStoragePoolRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\x12!netapp.googleapis.com/StoragePool\x12\x1d\n\x0fstorage_pool_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12?\n\x0cstorage_pool\x18\x03 \x01(\x0b\x32#.google.cloud.netapp.v1.StoragePoolB\x04\xe2\x41\x01\x02\"\x92\x01\n\x18UpdateStoragePoolRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\x12?\n\x0cstorage_pool\x18\x02 \x01(\x0b\x32#.google.cloud.netapp.v1.StoragePoolB\x04\xe2\x41\x01\x02\"T\n\x18\x44\x65leteStoragePoolRequest\x12\x38\n\x04name\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!netapp.googleapis.com/StoragePool\"\xcb\x08\n\x0bStoragePool\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x08\x12\x41\n\rservice_level\x18\x02 \x01(\x0e\x32$.google.cloud.netapp.v1.ServiceLevelB\x04\xe2\x41\x01\x02\x12\x1a\n\x0c\x63\x61pacity_gib\x18\x03 \x01(\x03\x42\x04\xe2\x41\x01\x02\x12!\n\x13volume_capacity_gib\x18\x04 \x01(\x03\x42\x04\xe2\x41\x01\x03\x12\x1a\n\x0cvolume_count\x18\x05 \x01(\x05\x42\x04\xe2\x41\x01\x03\x12>\n\x05state\x18\x06 \x01(\x0e\x32).google.cloud.netapp.v1.StoragePool.StateB\x04\xe2\x41\x01\x03\x12\x1b\n\rstate_details\x18\x07 \x01(\tB\x04\xe2\x41\x01\x03\x12\x35\n\x0b\x63reate_time\x18\x08 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x13\n\x0b\x64\x65scription\x18\t \x01(\t\x12?\n\x06labels\x18\n \x03(\x0b\x32/.google.cloud.netapp.v1.StoragePool.LabelsEntry\x12\x38\n\x07network\x18\x0b \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12\x44\n\x10\x61\x63tive_directory\x18\x0c \x01(\tB*\xfa\x41\'\n%netapp.googleapis.com/ActiveDirectory\x12\x38\n\nkms_config\x18\r \x01(\tB$\xfa\x41!\n\x1fnetapp.googleapis.com/KmsConfig\x12\x14\n\x0cldap_enabled\x18\x0e \x01(\x08\x12\x11\n\tpsa_range\x18\x0f \x01(\t\x12\x45\n\x0f\x65ncryption_type\x18\x10 \x01(\x0e\x32&.google.cloud.netapp.v1.EncryptionTypeB\x04\xe2\x41\x01\x03\x12&\n\x15global_access_allowed\x18\x11 \x01(\x08\x42\x02\x18\x01H\x00\x88\x01\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"{\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\t\n\x05READY\x10\x01\x12\x0c\n\x08\x43REATING\x10\x02\x12\x0c\n\x08\x44\x45LETING\x10\x03\x12\x0c\n\x08UPDATING\x10\x04\x12\r\n\tRESTORING\x10\x05\x12\x0c\n\x08\x44ISABLED\x10\x06\x12\t\n\x05\x45RROR\x10\x07:\x87\x01\xea\x41\x83\x01\n!netapp.googleapis.com/StoragePool\x12\x43projects/{project}/locations/{location}/storagePools/{storage_pool}*\x0cstoragePools2\x0bstoragePoolB\x18\n\x16_global_access_allowedB\xb2\x01\n\x1a\x63om.google.cloud.netapp.v1B\x10StoragePoolProtoP\x01Z2cloud.google.com/go/netapp/apiv1/netapppb;netapppb\xaa\x02\x16Google.Cloud.NetApp.V1\xca\x02\x16Google\\Cloud\\NetApp\\V1\xea\x02\x19Google::Cloud::NetApp::V1b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module NetApp
      module V1
        GetStoragePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.GetStoragePoolRequest").msgclass
        ListStoragePoolsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListStoragePoolsRequest").msgclass
        ListStoragePoolsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.ListStoragePoolsResponse").msgclass
        CreateStoragePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.CreateStoragePoolRequest").msgclass
        UpdateStoragePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.UpdateStoragePoolRequest").msgclass
        DeleteStoragePoolRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.DeleteStoragePoolRequest").msgclass
        StoragePool = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.StoragePool").msgclass
        StoragePool::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.netapp.v1.StoragePool.State").enummodule
      end
    end
  end
end
