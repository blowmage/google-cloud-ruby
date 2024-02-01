# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/dashboard/v1/common.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'


descriptor_data = "\n+google/monitoring/dashboard/v1/common.proto\x12\x1egoogle.monitoring.dashboard.v1\x1a\x1egoogle/protobuf/duration.proto\"\xc1\x07\n\x0b\x41ggregation\x12\x33\n\x10\x61lignment_period\x18\x01 \x01(\x0b\x32\x19.google.protobuf.Duration\x12O\n\x12per_series_aligner\x18\x02 \x01(\x0e\x32\x33.google.monitoring.dashboard.v1.Aggregation.Aligner\x12Q\n\x14\x63ross_series_reducer\x18\x04 \x01(\x0e\x32\x33.google.monitoring.dashboard.v1.Aggregation.Reducer\x12\x17\n\x0fgroup_by_fields\x18\x05 \x03(\t\"\x8b\x03\n\x07\x41ligner\x12\x0e\n\nALIGN_NONE\x10\x00\x12\x0f\n\x0b\x41LIGN_DELTA\x10\x01\x12\x0e\n\nALIGN_RATE\x10\x02\x12\x15\n\x11\x41LIGN_INTERPOLATE\x10\x03\x12\x14\n\x10\x41LIGN_NEXT_OLDER\x10\x04\x12\r\n\tALIGN_MIN\x10\n\x12\r\n\tALIGN_MAX\x10\x0b\x12\x0e\n\nALIGN_MEAN\x10\x0c\x12\x0f\n\x0b\x41LIGN_COUNT\x10\r\x12\r\n\tALIGN_SUM\x10\x0e\x12\x10\n\x0c\x41LIGN_STDDEV\x10\x0f\x12\x14\n\x10\x41LIGN_COUNT_TRUE\x10\x10\x12\x15\n\x11\x41LIGN_COUNT_FALSE\x10\x18\x12\x17\n\x13\x41LIGN_FRACTION_TRUE\x10\x11\x12\x17\n\x13\x41LIGN_PERCENTILE_99\x10\x12\x12\x17\n\x13\x41LIGN_PERCENTILE_95\x10\x13\x12\x17\n\x13\x41LIGN_PERCENTILE_50\x10\x14\x12\x17\n\x13\x41LIGN_PERCENTILE_05\x10\x15\x12\x18\n\x14\x41LIGN_PERCENT_CHANGE\x10\x17\"\xb1\x02\n\x07Reducer\x12\x0f\n\x0bREDUCE_NONE\x10\x00\x12\x0f\n\x0bREDUCE_MEAN\x10\x01\x12\x0e\n\nREDUCE_MIN\x10\x02\x12\x0e\n\nREDUCE_MAX\x10\x03\x12\x0e\n\nREDUCE_SUM\x10\x04\x12\x11\n\rREDUCE_STDDEV\x10\x05\x12\x10\n\x0cREDUCE_COUNT\x10\x06\x12\x15\n\x11REDUCE_COUNT_TRUE\x10\x07\x12\x16\n\x12REDUCE_COUNT_FALSE\x10\x0f\x12\x18\n\x14REDUCE_FRACTION_TRUE\x10\x08\x12\x18\n\x14REDUCE_PERCENTILE_99\x10\t\x12\x18\n\x14REDUCE_PERCENTILE_95\x10\n\x12\x18\n\x14REDUCE_PERCENTILE_50\x10\x0b\x12\x18\n\x14REDUCE_PERCENTILE_05\x10\x0c\"\x8a\x03\n\x14PickTimeSeriesFilter\x12S\n\x0eranking_method\x18\x01 \x01(\x0e\x32;.google.monitoring.dashboard.v1.PickTimeSeriesFilter.Method\x12\x17\n\x0fnum_time_series\x18\x02 \x01(\x05\x12Q\n\tdirection\x18\x03 \x01(\x0e\x32>.google.monitoring.dashboard.v1.PickTimeSeriesFilter.Direction\"t\n\x06Method\x12\x16\n\x12METHOD_UNSPECIFIED\x10\x00\x12\x0f\n\x0bMETHOD_MEAN\x10\x01\x12\x0e\n\nMETHOD_MAX\x10\x02\x12\x0e\n\nMETHOD_MIN\x10\x03\x12\x0e\n\nMETHOD_SUM\x10\x04\x12\x11\n\rMETHOD_LATEST\x10\x05\";\n\tDirection\x12\x19\n\x15\x44IRECTION_UNSPECIFIED\x10\x00\x12\x07\n\x03TOP\x10\x01\x12\n\n\x06\x42OTTOM\x10\x02\"\xd0\x01\n\x1bStatisticalTimeSeriesFilter\x12Z\n\x0eranking_method\x18\x01 \x01(\x0e\x32\x42.google.monitoring.dashboard.v1.StatisticalTimeSeriesFilter.Method\x12\x17\n\x0fnum_time_series\x18\x02 \x01(\x05\"<\n\x06Method\x12\x16\n\x12METHOD_UNSPECIFIED\x10\x00\x12\x1a\n\x16METHOD_CLUSTER_OUTLIER\x10\x01\x42\xf4\x01\n\"com.google.monitoring.dashboard.v1B\x0b\x43ommonProtoP\x01ZFcloud.google.com/go/monitoring/dashboard/apiv1/dashboardpb;dashboardpb\xaa\x02$Google.Cloud.Monitoring.Dashboard.V1\xca\x02$Google\\Cloud\\Monitoring\\Dashboard\\V1\xea\x02(Google::Cloud::Monitoring::Dashboard::V1b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
          Aggregation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.Aggregation").msgclass
          Aggregation::Aligner = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.Aggregation.Aligner").enummodule
          Aggregation::Reducer = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.Aggregation.Reducer").enummodule
          PickTimeSeriesFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.PickTimeSeriesFilter").msgclass
          PickTimeSeriesFilter::Method = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.PickTimeSeriesFilter.Method").enummodule
          PickTimeSeriesFilter::Direction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.PickTimeSeriesFilter.Direction").enummodule
          StatisticalTimeSeriesFilter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.StatisticalTimeSeriesFilter").msgclass
          StatisticalTimeSeriesFilter::Method = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.dashboard.v1.StatisticalTimeSeriesFilter.Method").enummodule
        end
      end
    end
  end
end
