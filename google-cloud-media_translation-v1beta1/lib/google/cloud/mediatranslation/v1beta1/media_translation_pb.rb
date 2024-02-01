# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/mediatranslation/v1beta1/media_translation.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/rpc/status_pb'
require 'google/api/client_pb'


descriptor_data = "\n=google/cloud/mediatranslation/v1beta1/media_translation.proto\x12%google.cloud.mediatranslation.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x17google/rpc/status.proto\x1a\x17google/api/client.proto\"\xb3\x01\n\x15TranslateSpeechConfig\x12\x1c\n\x0e\x61udio_encoding\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\"\n\x14source_language_code\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\"\n\x14target_language_code\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x1f\n\x11sample_rate_hertz\x18\x04 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x13\n\x05model\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"\x9a\x01\n\x1eStreamingTranslateSpeechConfig\x12X\n\x0c\x61udio_config\x18\x01 \x01(\x0b\x32<.google.cloud.mediatranslation.v1beta1.TranslateSpeechConfigB\x04\xe2\x41\x01\x02\x12\x1e\n\x10single_utterance\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xb2\x01\n\x1fStreamingTranslateSpeechRequest\x12\x61\n\x10streaming_config\x18\x01 \x01(\x0b\x32\x45.google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechConfigH\x00\x12\x17\n\raudio_content\x18\x02 \x01(\x0cH\x00\x42\x13\n\x11streaming_request\"\xf6\x01\n\x1eStreamingTranslateSpeechResult\x12~\n\x17text_translation_result\x18\x01 \x01(\x0b\x32[.google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResult.TextTranslationResultH\x00\x1aJ\n\x15TextTranslationResult\x12\x19\n\x0btranslation\x18\x01 \x01(\tB\x04\xe2\x41\x01\x03\x12\x16\n\x08is_final\x18\x02 \x01(\x08\x42\x04\xe2\x41\x01\x03\x42\x08\n\x06result\"\xf5\x02\n StreamingTranslateSpeechResponse\x12\'\n\x05\x65rror\x18\x01 \x01(\x0b\x32\x12.google.rpc.StatusB\x04\xe2\x41\x01\x03\x12[\n\x06result\x18\x02 \x01(\x0b\x32\x45.google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResultB\x04\xe2\x41\x01\x03\x12x\n\x11speech_event_type\x18\x03 \x01(\x0e\x32W.google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResponse.SpeechEventTypeB\x04\xe2\x41\x01\x03\"Q\n\x0fSpeechEventType\x12!\n\x1dSPEECH_EVENT_TYPE_UNSPECIFIED\x10\x00\x12\x1b\n\x17\x45ND_OF_SINGLE_UTTERANCE\x10\x01\x32\xa3\x02\n\x18SpeechTranslationService\x12\xb1\x01\n\x18StreamingTranslateSpeech\x12\x46.google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechRequest\x1aG.google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResponse\"\x00(\x01\x30\x01\x1aS\xca\x41\x1fmediatranslation.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\x99\x02\n)com.google.cloud.mediatranslation.v1beta1B\x15MediaTranslationProtoP\x01ZUcloud.google.com/go/mediatranslation/apiv1beta1/mediatranslationpb;mediatranslationpb\xf8\x01\x01\xaa\x02%Google.Cloud.MediaTranslation.V1Beta1\xca\x02%Google\\Cloud\\MediaTranslation\\V1beta1\xea\x02(Google::Cloud::MediaTranslation::V1beta1b\x06proto3"

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
    ["google.rpc.Status", "google/rpc/status.proto"],
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
    module MediaTranslation
      module V1beta1
        TranslateSpeechConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.mediatranslation.v1beta1.TranslateSpeechConfig").msgclass
        StreamingTranslateSpeechConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechConfig").msgclass
        StreamingTranslateSpeechRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechRequest").msgclass
        StreamingTranslateSpeechResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResult").msgclass
        StreamingTranslateSpeechResult::TextTranslationResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResult.TextTranslationResult").msgclass
        StreamingTranslateSpeechResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResponse").msgclass
        StreamingTranslateSpeechResponse::SpeechEventType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.mediatranslation.v1beta1.StreamingTranslateSpeechResponse.SpeechEventType").enummodule
      end
    end
  end
end
