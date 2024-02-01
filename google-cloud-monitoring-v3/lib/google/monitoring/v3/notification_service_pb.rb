# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/notification_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/notification_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n/google/monitoring/v3/notification_service.proto\x12\x14google.monitoring.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\'google/monitoring/v3/notification.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xa2\x01\n)ListNotificationChannelDescriptorsRequest\x12N\n\x04name\x18\x04 \x01(\tB@\xe2\x41\x01\x02\xfa\x41\x39\x12\x37monitoring.googleapis.com/NotificationChannelDescriptor\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x97\x01\n*ListNotificationChannelDescriptorsResponse\x12P\n\x13\x63hannel_descriptors\x18\x01 \x03(\x0b\x32\x33.google.monitoring.v3.NotificationChannelDescriptor\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"y\n\'GetNotificationChannelDescriptorRequest\x12N\n\x04name\x18\x03 \x01(\tB@\xe2\x41\x01\x02\xfa\x41\x39\n7monitoring.googleapis.com/NotificationChannelDescriptor\"\xb7\x01\n CreateNotificationChannelRequest\x12\x44\n\x04name\x18\x03 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\x12-monitoring.googleapis.com/NotificationChannel\x12M\n\x14notification_channel\x18\x02 \x01(\x0b\x32).google.monitoring.v3.NotificationChannelB\x04\xe2\x41\x01\x02\"\xb0\x01\n\x1fListNotificationChannelsRequest\x12\x44\n\x04name\x18\x05 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\x12-monitoring.googleapis.com/NotificationChannel\x12\x0e\n\x06\x66ilter\x18\x06 \x01(\t\x12\x10\n\x08order_by\x18\x07 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"\x99\x01\n ListNotificationChannelsResponse\x12H\n\x15notification_channels\x18\x03 \x03(\x0b\x32).google.monitoring.v3.NotificationChannel\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x12\n\ntotal_size\x18\x04 \x01(\x05\"e\n\x1dGetNotificationChannelRequest\x12\x44\n\x04name\x18\x03 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\n-monitoring.googleapis.com/NotificationChannel\"\xa2\x01\n UpdateNotificationChannelRequest\x12/\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMask\x12M\n\x14notification_channel\x18\x03 \x01(\x0b\x32).google.monitoring.v3.NotificationChannelB\x04\xe2\x41\x01\x02\"w\n DeleteNotificationChannelRequest\x12\x44\n\x04name\x18\x03 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\n-monitoring.googleapis.com/NotificationChannel\x12\r\n\x05\x66orce\x18\x05 \x01(\x08\"v\n.SendNotificationChannelVerificationCodeRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\n-monitoring.googleapis.com/NotificationChannel\"\xa6\x01\n-GetNotificationChannelVerificationCodeRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\n-monitoring.googleapis.com/NotificationChannel\x12/\n\x0b\x65xpire_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"o\n.GetNotificationChannelVerificationCodeResponse\x12\x0c\n\x04\x63ode\x18\x01 \x01(\t\x12/\n\x0b\x65xpire_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"|\n VerifyNotificationChannelRequest\x12\x44\n\x04name\x18\x01 \x01(\tB6\xe2\x41\x01\x02\xfa\x41/\n-monitoring.googleapis.com/NotificationChannel\x12\x12\n\x04\x63ode\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x32\xea\x12\n\x1aNotificationChannelService\x12\xec\x01\n\"ListNotificationChannelDescriptors\x12?.google.monitoring.v3.ListNotificationChannelDescriptorsRequest\x1a@.google.monitoring.v3.ListNotificationChannelDescriptorsResponse\"C\xda\x41\x04name\x82\xd3\xe4\x93\x02\x36\x12\x34/v3/{name=projects/*}/notificationChannelDescriptors\x12\xdd\x01\n GetNotificationChannelDescriptor\x12=.google.monitoring.v3.GetNotificationChannelDescriptorRequest\x1a\x33.google.monitoring.v3.NotificationChannelDescriptor\"E\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\x12\x36/v3/{name=projects/*/notificationChannelDescriptors/*}\x12\xc4\x01\n\x18ListNotificationChannels\x12\x35.google.monitoring.v3.ListNotificationChannelsRequest\x1a\x36.google.monitoring.v3.ListNotificationChannelsResponse\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v3/{name=projects/*}/notificationChannels\x12\xb5\x01\n\x16GetNotificationChannel\x12\x33.google.monitoring.v3.GetNotificationChannelRequest\x1a).google.monitoring.v3.NotificationChannel\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v3/{name=projects/*/notificationChannels/*}\x12\xe4\x01\n\x19\x43reateNotificationChannel\x12\x36.google.monitoring.v3.CreateNotificationChannelRequest\x1a).google.monitoring.v3.NotificationChannel\"d\xda\x41\x19name,notification_channel\x82\xd3\xe4\x93\x02\x42\"*/v3/{name=projects/*}/notificationChannels:\x14notification_channel\x12\x83\x02\n\x19UpdateNotificationChannel\x12\x36.google.monitoring.v3.UpdateNotificationChannelRequest\x1a).google.monitoring.v3.NotificationChannel\"\x82\x01\xda\x41 update_mask,notification_channel\x82\xd3\xe4\x93\x02Y2A/v3/{notification_channel.name=projects/*/notificationChannels/*}:\x14notification_channel\x12\xae\x01\n\x19\x44\x65leteNotificationChannel\x12\x36.google.monitoring.v3.DeleteNotificationChannelRequest\x1a\x16.google.protobuf.Empty\"A\xda\x41\nname,force\x82\xd3\xe4\x93\x02.*,/v3/{name=projects/*/notificationChannels/*}\x12\xdc\x01\n\'SendNotificationChannelVerificationCode\x12\x44.google.monitoring.v3.SendNotificationChannelVerificationCodeRequest\x1a\x16.google.protobuf.Empty\"S\xda\x41\x04name\x82\xd3\xe4\x93\x02\x46\"A/v3/{name=projects/*/notificationChannels/*}:sendVerificationCode:\x01*\x12\x87\x02\n&GetNotificationChannelVerificationCode\x12\x43.google.monitoring.v3.GetNotificationChannelVerificationCodeRequest\x1a\x44.google.monitoring.v3.GetNotificationChannelVerificationCodeResponse\"R\xda\x41\x04name\x82\xd3\xe4\x93\x02\x45\"@/v3/{name=projects/*/notificationChannels/*}:getVerificationCode:\x01*\x12\xca\x01\n\x19VerifyNotificationChannel\x12\x36.google.monitoring.v3.VerifyNotificationChannelRequest\x1a).google.monitoring.v3.NotificationChannel\"J\xda\x41\tname,code\x82\xd3\xe4\x93\x02\x38\"3/v3/{name=projects/*/notificationChannels/*}:verify:\x01*\x1a\xa9\x01\xca\x41\x19monitoring.googleapis.com\xd2\x41\x89\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/monitoring,https://www.googleapis.com/auth/monitoring.readB\xd3\x01\n\x18\x63om.google.monitoring.v3B\x18NotificationServiceProtoP\x01ZAcloud.google.com/go/monitoring/apiv3/v2/monitoringpb;monitoringpb\xaa\x02\x1aGoogle.Cloud.Monitoring.V3\xca\x02\x1aGoogle\\Cloud\\Monitoring\\V3\xea\x02\x1dGoogle::Cloud::Monitoring::V3b\x06proto3"

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
    ["google.monitoring.v3.NotificationChannelDescriptor", "google/monitoring/v3/notification.proto"],
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
    module Monitoring
      module V3
        ListNotificationChannelDescriptorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListNotificationChannelDescriptorsRequest").msgclass
        ListNotificationChannelDescriptorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListNotificationChannelDescriptorsResponse").msgclass
        GetNotificationChannelDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetNotificationChannelDescriptorRequest").msgclass
        CreateNotificationChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateNotificationChannelRequest").msgclass
        ListNotificationChannelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListNotificationChannelsRequest").msgclass
        ListNotificationChannelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListNotificationChannelsResponse").msgclass
        GetNotificationChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetNotificationChannelRequest").msgclass
        UpdateNotificationChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.UpdateNotificationChannelRequest").msgclass
        DeleteNotificationChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.DeleteNotificationChannelRequest").msgclass
        SendNotificationChannelVerificationCodeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.SendNotificationChannelVerificationCodeRequest").msgclass
        GetNotificationChannelVerificationCodeRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetNotificationChannelVerificationCodeRequest").msgclass
        GetNotificationChannelVerificationCodeResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetNotificationChannelVerificationCodeResponse").msgclass
        VerifyNotificationChannelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.VerifyNotificationChannelRequest").msgclass
      end
    end
  end
end
