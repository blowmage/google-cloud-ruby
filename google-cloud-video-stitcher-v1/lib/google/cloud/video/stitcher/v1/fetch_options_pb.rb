# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/video/stitcher/v1/fetch_options.proto

require 'google/protobuf'


descriptor_data = "\n2google/cloud/video/stitcher/v1/fetch_options.proto\x12\x1egoogle.cloud.video.stitcher.v1\"\x8a\x01\n\x0c\x46\x65tchOptions\x12J\n\x07headers\x18\x01 \x03(\x0b\x32\x39.google.cloud.video.stitcher.v1.FetchOptions.HeadersEntry\x1a.\n\x0cHeadersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\x42y\n\"com.google.cloud.video.stitcher.v1B\x11\x46\x65tchOptionsProtoP\x01Z>cloud.google.com/go/video/stitcher/apiv1/stitcherpb;stitcherpbb\x06proto3"

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
    module Video
      module Stitcher
        module V1
          FetchOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.video.stitcher.v1.FetchOptions").msgclass
        end
      end
    end
  end
end
