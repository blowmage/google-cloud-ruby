# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/metric_service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/metric_pb'
require 'google/api/monitored_resource_pb'
require 'google/api/resource_pb'
require 'google/monitoring/v3/common_pb'
require 'google/monitoring/v3/metric_pb'
require 'google/protobuf/empty_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n)google/monitoring/v3/metric_service.proto\x12\x14google.monitoring.v3\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x17google/api/metric.proto\x1a#google/api/monitored_resource.proto\x1a\x19google/api/resource.proto\x1a!google/monitoring/v3/common.proto\x1a!google/monitoring/v3/metric.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x17google/rpc/status.proto\"\xae\x01\n\'ListMonitoredResourceDescriptorsRequest\x12L\n\x04name\x18\x05 \x01(\tB>\xe2\x41\x01\x02\xfa\x41\x37\x12\x35monitoring.googleapis.com/MonitoredResourceDescriptor\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"\x8a\x01\n(ListMonitoredResourceDescriptorsResponse\x12\x45\n\x14resource_descriptors\x18\x01 \x03(\x0b\x32\'.google.api.MonitoredResourceDescriptor\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"u\n%GetMonitoredResourceDescriptorRequest\x12L\n\x04name\x18\x03 \x01(\tB>\xe2\x41\x01\x02\xfa\x41\x37\n5monitoring.googleapis.com/MonitoredResourceDescriptor\"\x98\x01\n\x1cListMetricDescriptorsRequest\x12\x41\n\x04name\x18\x05 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\x12*monitoring.googleapis.com/MetricDescriptor\x12\x0e\n\x06\x66ilter\x18\x02 \x01(\t\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x04 \x01(\t\"r\n\x1dListMetricDescriptorsResponse\x12\x38\n\x12metric_descriptors\x18\x01 \x03(\x0b\x32\x1c.google.api.MetricDescriptor\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"_\n\x1aGetMetricDescriptorRequest\x12\x41\n\x04name\x18\x03 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*monitoring.googleapis.com/MetricDescriptor\"\xa1\x01\n\x1d\x43reateMetricDescriptorRequest\x12\x41\n\x04name\x18\x03 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\x12*monitoring.googleapis.com/MetricDescriptor\x12=\n\x11metric_descriptor\x18\x02 \x01(\x0b\x32\x1c.google.api.MetricDescriptorB\x04\xe2\x41\x01\x02\"b\n\x1d\x44\x65leteMetricDescriptorRequest\x12\x41\n\x04name\x18\x03 \x01(\tB3\xe2\x41\x01\x02\xfa\x41,\n*monitoring.googleapis.com/MetricDescriptor\"\xd2\x03\n\x15ListTimeSeriesRequest\x12;\n\x04name\x18\n \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\x12$monitoring.googleapis.com/TimeSeries\x12\x14\n\x06\x66ilter\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12:\n\x08interval\x18\x04 \x01(\x0b\x32\".google.monitoring.v3.TimeIntervalB\x04\xe2\x41\x01\x02\x12\x36\n\x0b\x61ggregation\x18\x05 \x01(\x0b\x32!.google.monitoring.v3.Aggregation\x12@\n\x15secondary_aggregation\x18\x0b \x01(\x0b\x32!.google.monitoring.v3.Aggregation\x12\x10\n\x08order_by\x18\x06 \x01(\t\x12N\n\x04view\x18\x07 \x01(\x0e\x32:.google.monitoring.v3.ListTimeSeriesRequest.TimeSeriesViewB\x04\xe2\x41\x01\x02\x12\x11\n\tpage_size\x18\x08 \x01(\x05\x12\x12\n\npage_token\x18\t \x01(\t\"\'\n\x0eTimeSeriesView\x12\x08\n\x04\x46ULL\x10\x00\x12\x0b\n\x07HEADERS\x10\x01\"\xa4\x01\n\x16ListTimeSeriesResponse\x12\x35\n\x0btime_series\x18\x01 \x03(\x0b\x32 .google.monitoring.v3.TimeSeries\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12,\n\x10\x65xecution_errors\x18\x03 \x03(\x0b\x32\x12.google.rpc.Status\x12\x0c\n\x04unit\x18\x05 \x01(\t\"\x9a\x01\n\x17\x43reateTimeSeriesRequest\x12\x42\n\x04name\x18\x03 \x01(\tB4\xe2\x41\x01\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12;\n\x0btime_series\x18\x02 \x03(\x0b\x32 .google.monitoring.v3.TimeSeriesB\x04\xe2\x41\x01\x02\"z\n\x15\x43reateTimeSeriesError\x12\x39\n\x0btime_series\x18\x01 \x01(\x0b\x32 .google.monitoring.v3.TimeSeriesB\x02\x18\x01\x12&\n\x06status\x18\x02 \x01(\x0b\x32\x12.google.rpc.StatusB\x02\x18\x01\"\xd8\x01\n\x17\x43reateTimeSeriesSummary\x12\x19\n\x11total_point_count\x18\x01 \x01(\x05\x12\x1b\n\x13success_point_count\x18\x02 \x01(\x05\x12\x43\n\x06\x65rrors\x18\x03 \x03(\x0b\x32\x33.google.monitoring.v3.CreateTimeSeriesSummary.Error\x1a@\n\x05\x45rror\x12\"\n\x06status\x18\x01 \x01(\x0b\x32\x12.google.rpc.Status\x12\x13\n\x0bpoint_count\x18\x02 \x01(\x05\"h\n\x16QueryTimeSeriesRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12\x13\n\x05query\x18\x07 \x01(\tB\x04\xe2\x41\x01\x02\x12\x11\n\tpage_size\x18\t \x01(\x05\x12\x12\n\npage_token\x18\n \x01(\t\"\xea\x01\n\x17QueryTimeSeriesResponse\x12J\n\x16time_series_descriptor\x18\x08 \x01(\x0b\x32*.google.monitoring.v3.TimeSeriesDescriptor\x12>\n\x10time_series_data\x18\t \x03(\x0b\x32$.google.monitoring.v3.TimeSeriesData\x12\x17\n\x0fnext_page_token\x18\n \x01(\t\x12*\n\x0epartial_errors\x18\x0b \x03(\x0b\x32\x12.google.rpc.Status\"Y\n\x0eQueryErrorList\x12\x30\n\x06\x65rrors\x18\x01 \x03(\x0b\x32 .google.monitoring.v3.QueryError\x12\x15\n\rerror_summary\x18\x02 \x01(\t2\xbc\x0f\n\rMetricService\x12\xe4\x01\n ListMonitoredResourceDescriptors\x12=.google.monitoring.v3.ListMonitoredResourceDescriptorsRequest\x1a>.google.monitoring.v3.ListMonitoredResourceDescriptorsResponse\"A\xda\x41\x04name\x82\xd3\xe4\x93\x02\x34\x12\x32/v3/{name=projects/*}/monitoredResourceDescriptors\x12\xcc\x01\n\x1eGetMonitoredResourceDescriptor\x12;.google.monitoring.v3.GetMonitoredResourceDescriptorRequest\x1a\'.google.api.MonitoredResourceDescriptor\"D\xda\x41\x04name\x82\xd3\xe4\x93\x02\x37\x12\x35/v3/{name=projects/*/monitoredResourceDescriptors/**}\x12\xb8\x01\n\x15ListMetricDescriptors\x12\x32.google.monitoring.v3.ListMetricDescriptorsRequest\x1a\x33.google.monitoring.v3.ListMetricDescriptorsResponse\"6\xda\x41\x04name\x82\xd3\xe4\x93\x02)\x12\'/v3/{name=projects/*}/metricDescriptors\x12\xa0\x01\n\x13GetMetricDescriptor\x12\x30.google.monitoring.v3.GetMetricDescriptorRequest\x1a\x1c.google.api.MetricDescriptor\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v3/{name=projects/*/metricDescriptors/**}\x12\xc8\x01\n\x16\x43reateMetricDescriptor\x12\x33.google.monitoring.v3.CreateMetricDescriptorRequest\x1a\x1c.google.api.MetricDescriptor\"[\xda\x41\x16name,metric_descriptor\x82\xd3\xe4\x93\x02<\"\'/v3/{name=projects/*}/metricDescriptors:\x11metric_descriptor\x12\xa0\x01\n\x16\x44\x65leteMetricDescriptor\x12\x33.google.monitoring.v3.DeleteMetricDescriptorRequest\x1a\x16.google.protobuf.Empty\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,**/v3/{name=projects/*/metricDescriptors/**}\x12\xfe\x01\n\x0eListTimeSeries\x12+.google.monitoring.v3.ListTimeSeriesRequest\x1a,.google.monitoring.v3.ListTimeSeriesResponse\"\x90\x01\xda\x41\x19name,filter,interval,view\x82\xd3\xe4\x93\x02n\x12 /v3/{name=projects/*}/timeSeriesZ\'\x12%/v3/{name=organizations/*}/timeSeriesZ!\x12\x1f/v3/{name=folders/*}/timeSeries\x12\x99\x01\n\x10\x43reateTimeSeries\x12-.google.monitoring.v3.CreateTimeSeriesRequest\x1a\x16.google.protobuf.Empty\">\xda\x41\x10name,time_series\x82\xd3\xe4\x93\x02%\" /v3/{name=projects/*}/timeSeries:\x01*\x12\xae\x01\n\x17\x43reateServiceTimeSeries\x12-.google.monitoring.v3.CreateTimeSeriesRequest\x1a\x16.google.protobuf.Empty\"L\xda\x41\x10name,time_series\x82\xd3\xe4\x93\x02\x33\"./v3/{name=projects/*}/timeSeries:createService:\x01*\x1a\xda\x01\xca\x41\x19monitoring.googleapis.com\xd2\x41\xba\x01https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/monitoring,https://www.googleapis.com/auth/monitoring.read,https://www.googleapis.com/auth/monitoring.writeB\x89\x08\n\x18\x63om.google.monitoring.v3B\x12MetricServiceProtoP\x01ZAcloud.google.com/go/monitoring/apiv3/v2/monitoringpb;monitoringpb\xaa\x02\x1aGoogle.Cloud.Monitoring.V3\xca\x02\x1aGoogle\\Cloud\\Monitoring\\V3\xea\x02\x1dGoogle::Cloud::Monitoring::V3\xea\x41\xf0\x01\n*monitoring.googleapis.com/MetricDescriptor\x12;projects/{project}/metricDescriptors/{metric_descriptor=**}\x12\x45organizations/{organization}/metricDescriptors/{metric_descriptor=**}\x12\x39\x66olders/{folder}/metricDescriptors/{metric_descriptor=**}\x12\x01* \x01\xea\x41\xb7\x02\n5monitoring.googleapis.com/MonitoredResourceDescriptor\x12Oprojects/{project}/monitoredResourceDescriptors/{monitored_resource_descriptor}\x12Yorganizations/{organization}/monitoredResourceDescriptors/{monitored_resource_descriptor}\x12Mfolders/{folder}/monitoredResourceDescriptors/{monitored_resource_descriptor}\x12\x01* \x01\xea\x41Q\n#monitoring.googleapis.com/Workspace\x12\x12projects/{project}\x12\x16workspaces/{workspace}\xea\x41\xb5\x01\n$monitoring.googleapis.com/TimeSeries\x12+projects/{project}/timeSeries/{time_series}\x12\x35organizations/{organization}/timeSeries/{time_series}\x12)folders/{folder}/timeSeries/{time_series}b\x06proto3"

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
    ["google.api.MonitoredResourceDescriptor", "google/api/monitored_resource.proto"],
    ["google.api.MetricDescriptor", "google/api/metric.proto"],
    ["google.monitoring.v3.TimeInterval", "google/monitoring/v3/common.proto"],
    ["google.monitoring.v3.TimeSeries", "google/monitoring/v3/metric.proto"],
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
    module Monitoring
      module V3
        ListMonitoredResourceDescriptorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMonitoredResourceDescriptorsRequest").msgclass
        ListMonitoredResourceDescriptorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMonitoredResourceDescriptorsResponse").msgclass
        GetMonitoredResourceDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetMonitoredResourceDescriptorRequest").msgclass
        ListMetricDescriptorsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMetricDescriptorsRequest").msgclass
        ListMetricDescriptorsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListMetricDescriptorsResponse").msgclass
        GetMetricDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.GetMetricDescriptorRequest").msgclass
        CreateMetricDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateMetricDescriptorRequest").msgclass
        DeleteMetricDescriptorRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.DeleteMetricDescriptorRequest").msgclass
        ListTimeSeriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListTimeSeriesRequest").msgclass
        ListTimeSeriesRequest::TimeSeriesView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListTimeSeriesRequest.TimeSeriesView").enummodule
        ListTimeSeriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ListTimeSeriesResponse").msgclass
        CreateTimeSeriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesRequest").msgclass
        CreateTimeSeriesError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesError").msgclass
        CreateTimeSeriesSummary = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesSummary").msgclass
        CreateTimeSeriesSummary::Error = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.CreateTimeSeriesSummary.Error").msgclass
        QueryTimeSeriesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryTimeSeriesRequest").msgclass
        QueryTimeSeriesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryTimeSeriesResponse").msgclass
        QueryErrorList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.QueryErrorList").msgclass
      end
    end
  end
end
