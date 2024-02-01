# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/dashboards_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/monitoring/dashboard/v1/dashboard_pb'
require 'google/protobuf/empty_pb'


descriptor_data = "\n7google/monitoring/dashboard/v1/dashboards_service.proto\x12\x1egoogle.monitoring.dashboard.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a.google/monitoring/dashboard/v1/dashboard.proto\x1a\x1bgoogle/protobuf/empty.proto\"\x89\x01\n\x16\x43reateDashboardRequest\x12\x14\n\x06parent\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x42\n\tdashboard\x18\x02 \x01(\x0b\x32).google.monitoring.dashboard.v1.DashboardB\x04\xe2\x41\x01\x02\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\"\x84\x01\n\x15ListDashboardsRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe2\x41\x01\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"p\n\x16ListDashboardsResponse\x12=\n\ndashboards\x18\x01 \x03(\x0b\x32).google.monitoring.dashboard.v1.Dashboard\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"Q\n\x13GetDashboardRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe2\x41\x01\x02\xfa\x41%\n#monitoring.googleapis.com/Dashboard\"T\n\x16\x44\x65leteDashboardRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe2\x41\x01\x02\xfa\x41%\n#monitoring.googleapis.com/Dashboard\"s\n\x16UpdateDashboardRequest\x12\x42\n\tdashboard\x18\x01 \x01(\x0b\x32).google.monitoring.dashboard.v1.DashboardB\x04\xe2\x41\x01\x02\x12\x15\n\rvalidate_only\x18\x03 \x01(\x08\x32\xb1\x08\n\x11\x44\x61shboardsService\x12\xab\x01\n\x0f\x43reateDashboard\x12\x36.google.monitoring.dashboard.v1.CreateDashboardRequest\x1a).google.monitoring.dashboard.v1.Dashboard\"5\x82\xd3\xe4\x93\x02/\"\"/v1/{parent=projects/*}/dashboards:\tdashboard\x12\xab\x01\n\x0eListDashboards\x12\x35.google.monitoring.dashboard.v1.ListDashboardsRequest\x1a\x36.google.monitoring.dashboard.v1.ListDashboardsResponse\"*\x82\xd3\xe4\x93\x02$\x12\"/v1/{parent=projects/*}/dashboards\x12\x9a\x01\n\x0cGetDashboard\x12\x33.google.monitoring.dashboard.v1.GetDashboardRequest\x1a).google.monitoring.dashboard.v1.Dashboard\"*\x82\xd3\xe4\x93\x02$\x12\"/v1/{name=projects/*/dashboards/*}\x12\x8d\x01\n\x0f\x44\x65leteDashboard\x12\x36.google.monitoring.dashboard.v1.DeleteDashboardRequest\x1a\x16.google.protobuf.Empty\"*\x82\xd3\xe4\x93\x02$*\"/v1/{name=projects/*/dashboards/*}\x12\xb5\x01\n\x0fUpdateDashboard\x12\x36.google.monitoring.dashboard.v1.UpdateDashboardRequest\x1a).google.monitoring.dashboard.v1.Dashboard\"?\x82\xd3\xe4\x93\x02\x39\x32,/v1/{dashboard.name=projects/*/dashboards/*}:\tdashboard\x1a\xda\x01\xca\x41\x19monitoring.googleapis.com\xd2\x41\xba\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/monitoring,https://www.googleapis.com/auth/monitoring.read,https://www.googleapis.com/auth/monitoring.writeB\xff\x01\n\"com.google.monitoring.dashboard.v1B\x16\x44\x61shboardsServiceProtoP\x01ZFcloud.google.com/go/monitoring/dashboard/apiv1/dashboardpb;dashboardpb\xaa\x02$Google.Cloud.Monitoring.Dashboard.V1\xca\x02$Google\\Cloud\\Monitoring\\Dashboard\\V1\xea\x02(Google::Cloud::Monitoring::Dashboard::V1b\x06proto3"

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
    ["google.monitoring.dashboard.v1.Dashboard", "google/monitoring/dashboard/v1/dashboard.proto"],
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
      module Dashboard
        module V1
          CreateDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.CreateDashboardRequest").msgclass
          ListDashboardsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ListDashboardsRequest").msgclass
          ListDashboardsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.ListDashboardsResponse").msgclass
          GetDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.GetDashboardRequest").msgclass
          DeleteDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.DeleteDashboardRequest").msgclass
          UpdateDashboardRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.UpdateDashboardRequest").msgclass
        end
      end
    end
  end
end
