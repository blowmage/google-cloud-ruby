# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/aiplatform/v1/pipeline_job.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/aiplatform/v1/artifact_pb'
require 'google/cloud/aiplatform/v1/context_pb'
require 'google/cloud/aiplatform/v1/encryption_spec_pb'
require 'google/cloud/aiplatform/v1/execution_pb'
require 'google/cloud/aiplatform/v1/pipeline_failure_policy_pb'
require 'google/cloud/aiplatform/v1/pipeline_state_pb'
require 'google/cloud/aiplatform/v1/value_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n-google/cloud/aiplatform/v1/pipeline_job.proto\x12\x1agoogle.cloud.aiplatform.v1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a)google/cloud/aiplatform/v1/artifact.proto\x1a(google/cloud/aiplatform/v1/context.proto\x1a\x30google/cloud/aiplatform/v1/encryption_spec.proto\x1a*google/cloud/aiplatform/v1/execution.proto\x1a\x38google/cloud/aiplatform/v1/pipeline_failure_policy.proto\x1a/google/cloud/aiplatform/v1/pipeline_state.proto\x1a&google/cloud/aiplatform/v1/value.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xd0\x0e\n\x0bPipelineJob\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x14\n\x0c\x64isplay_name\x18\x02 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12.\n\rpipeline_spec\x18\x07 \x01(\x0b\x32\x17.google.protobuf.Struct\x12=\n\x05state\x18\x08 \x01(\x0e\x32).google.cloud.aiplatform.v1.PipelineStateB\x03\xe0\x41\x03\x12\x46\n\njob_detail\x18\t \x01(\x0b\x32-.google.cloud.aiplatform.v1.PipelineJobDetailB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\n \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12\x43\n\x06labels\x18\x0b \x03(\x0b\x32\x33.google.cloud.aiplatform.v1.PipelineJob.LabelsEntry\x12M\n\x0eruntime_config\x18\x0c \x01(\x0b\x32\x35.google.cloud.aiplatform.v1.PipelineJob.RuntimeConfig\x12\x43\n\x0f\x65ncryption_spec\x18\x10 \x01(\x0b\x32*.google.cloud.aiplatform.v1.EncryptionSpec\x12\x17\n\x0fservice_account\x18\x11 \x01(\t\x12\x34\n\x07network\x18\x12 \x01(\tB#\xfa\x41 \n\x1e\x63ompute.googleapis.com/Network\x12\x1a\n\x12reserved_ip_ranges\x18\x19 \x03(\t\x12\x14\n\x0ctemplate_uri\x18\x13 \x01(\t\x12T\n\x11template_metadata\x18\x14 \x01(\x0b\x32\x34.google.cloud.aiplatform.v1.PipelineTemplateMetadataB\x03\xe0\x41\x03\x12\x1a\n\rschedule_name\x18\x16 \x01(\tB\x03\xe0\x41\x03\x1a\xf8\x05\n\rRuntimeConfig\x12]\n\nparameters\x18\x01 \x03(\x0b\x32\x45.google.cloud.aiplatform.v1.PipelineJob.RuntimeConfig.ParametersEntryB\x02\x18\x01\x12!\n\x14gcs_output_directory\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x64\n\x10parameter_values\x18\x03 \x03(\x0b\x32J.google.cloud.aiplatform.v1.PipelineJob.RuntimeConfig.ParameterValuesEntry\x12I\n\x0e\x66\x61ilure_policy\x18\x04 \x01(\x0e\x32\x31.google.cloud.aiplatform.v1.PipelineFailurePolicy\x12\x62\n\x0finput_artifacts\x18\x05 \x03(\x0b\x32I.google.cloud.aiplatform.v1.PipelineJob.RuntimeConfig.InputArtifactsEntry\x1a.\n\rInputArtifact\x12\x15\n\x0b\x61rtifact_id\x18\x01 \x01(\tH\x00\x42\x06\n\x04kind\x1aT\n\x0fParametersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x30\n\x05value\x18\x02 \x01(\x0b\x32!.google.cloud.aiplatform.v1.Value:\x02\x38\x01\x1aN\n\x14ParameterValuesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12%\n\x05value\x18\x02 \x01(\x0b\x32\x16.google.protobuf.Value:\x02\x38\x01\x1az\n\x13InputArtifactsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12R\n\x05value\x18\x02 \x01(\x0b\x32\x43.google.cloud.aiplatform.v1.PipelineJob.RuntimeConfig.InputArtifact:\x02\x38\x01\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:o\xea\x41l\n%aiplatform.googleapis.com/PipelineJob\x12\x43projects/{project}/locations/{location}/pipelineJobs/{pipeline_job}\"+\n\x18PipelineTemplateMetadata\x12\x0f\n\x07version\x18\x03 \x01(\t\"\xea\x01\n\x11PipelineJobDetail\x12\x42\n\x10pipeline_context\x18\x01 \x01(\x0b\x32#.google.cloud.aiplatform.v1.ContextB\x03\xe0\x41\x03\x12\x46\n\x14pipeline_run_context\x18\x02 \x01(\x0b\x32#.google.cloud.aiplatform.v1.ContextB\x03\xe0\x41\x03\x12I\n\x0ctask_details\x18\x03 \x03(\x0b\x32..google.cloud.aiplatform.v1.PipelineTaskDetailB\x03\xe0\x41\x03\"\x9d\x0b\n\x12PipelineTaskDetail\x12\x14\n\x07task_id\x18\x01 \x01(\x03\x42\x03\xe0\x41\x03\x12\x1b\n\x0eparent_task_id\x18\x0c \x01(\x03\x42\x03\xe0\x41\x03\x12\x16\n\ttask_name\x18\x02 \x01(\tB\x03\xe0\x41\x03\x12\x34\n\x0b\x63reate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x33\n\nstart_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12T\n\x0f\x65xecutor_detail\x18\x06 \x01(\x0b\x32\x36.google.cloud.aiplatform.v1.PipelineTaskExecutorDetailB\x03\xe0\x41\x03\x12H\n\x05state\x18\x07 \x01(\x0e\x32\x34.google.cloud.aiplatform.v1.PipelineTaskDetail.StateB\x03\xe0\x41\x03\x12=\n\texecution\x18\x08 \x01(\x0b\x32%.google.cloud.aiplatform.v1.ExecutionB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\t \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x12\x64\n\x14pipeline_task_status\x18\r \x03(\x0b\x32\x41.google.cloud.aiplatform.v1.PipelineTaskDetail.PipelineTaskStatusB\x03\xe0\x41\x03\x12O\n\x06inputs\x18\n \x03(\x0b\x32:.google.cloud.aiplatform.v1.PipelineTaskDetail.InputsEntryB\x03\xe0\x41\x03\x12Q\n\x07outputs\x18\x0b \x03(\x0b\x32;.google.cloud.aiplatform.v1.PipelineTaskDetail.OutputsEntryB\x03\xe0\x41\x03\x1a\xbc\x01\n\x12PipelineTaskStatus\x12\x34\n\x0bupdate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12H\n\x05state\x18\x02 \x01(\x0e\x32\x34.google.cloud.aiplatform.v1.PipelineTaskDetail.StateB\x03\xe0\x41\x03\x12&\n\x05\x65rror\x18\x03 \x01(\x0b\x32\x12.google.rpc.StatusB\x03\xe0\x41\x03\x1aL\n\x0c\x41rtifactList\x12<\n\tartifacts\x18\x01 \x03(\x0b\x32$.google.cloud.aiplatform.v1.ArtifactB\x03\xe0\x41\x03\x1aj\n\x0bInputsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12J\n\x05value\x18\x02 \x01(\x0b\x32;.google.cloud.aiplatform.v1.PipelineTaskDetail.ArtifactList:\x02\x38\x01\x1ak\n\x0cOutputsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12J\n\x05value\x18\x02 \x01(\x0b\x32;.google.cloud.aiplatform.v1.PipelineTaskDetail.ArtifactList:\x02\x38\x01\"\xa6\x01\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x0b\n\x07RUNNING\x10\x02\x12\r\n\tSUCCEEDED\x10\x03\x12\x12\n\x0e\x43\x41NCEL_PENDING\x10\x04\x12\x0e\n\nCANCELLING\x10\x05\x12\r\n\tCANCELLED\x10\x06\x12\n\n\x06\x46\x41ILED\x10\x07\x12\x0b\n\x07SKIPPED\x10\x08\x12\x11\n\rNOT_TRIGGERED\x10\t\"\xcb\x04\n\x1aPipelineTaskExecutorDetail\x12g\n\x10\x63ontainer_detail\x18\x01 \x01(\x0b\x32\x46.google.cloud.aiplatform.v1.PipelineTaskExecutorDetail.ContainerDetailB\x03\xe0\x41\x03H\x00\x12h\n\x11\x63ustom_job_detail\x18\x02 \x01(\x0b\x32\x46.google.cloud.aiplatform.v1.PipelineTaskExecutorDetail.CustomJobDetailB\x03\xe0\x41\x03H\x00\x1a\xe7\x01\n\x0f\x43ontainerDetail\x12=\n\x08main_job\x18\x01 \x01(\tB+\xe0\x41\x03\xfa\x41%\n#aiplatform.googleapis.com/CustomJob\x12J\n\x15pre_caching_check_job\x18\x02 \x01(\tB+\xe0\x41\x03\xfa\x41%\n#aiplatform.googleapis.com/CustomJob\x12\x1d\n\x10\x66\x61iled_main_jobs\x18\x03 \x03(\tB\x03\xe0\x41\x03\x12*\n\x1d\x66\x61iled_pre_caching_check_jobs\x18\x04 \x03(\tB\x03\xe0\x41\x03\x1a\x65\n\x0f\x43ustomJobDetail\x12\x38\n\x03job\x18\x01 \x01(\tB+\xe0\x41\x03\xfa\x41%\n#aiplatform.googleapis.com/CustomJob\x12\x18\n\x0b\x66\x61iled_jobs\x18\x03 \x03(\tB\x03\xe0\x41\x03\x42\t\n\x07\x64\x65tailsB\x97\x02\n\x1e\x63om.google.cloud.aiplatform.v1B\x08PipelineP\x01Z>cloud.google.com/go/aiplatform/apiv1/aiplatformpb;aiplatformpb\xaa\x02\x1aGoogle.Cloud.AIPlatform.V1\xca\x02\x1aGoogle\\Cloud\\AIPlatform\\V1\xea\x02\x1dGoogle::Cloud::AIPlatform::V1\xea\x41N\n\x1e\x63ompute.googleapis.com/Network\x12,projects/{project}/global/networks/{network}b\x06proto3"

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
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.cloud.aiplatform.v1.EncryptionSpec", "google/cloud/aiplatform/v1/encryption_spec.proto"],
    ["google.cloud.aiplatform.v1.Value", "google/cloud/aiplatform/v1/value.proto"],
    ["google.cloud.aiplatform.v1.Context", "google/cloud/aiplatform/v1/context.proto"],
    ["google.cloud.aiplatform.v1.Execution", "google/cloud/aiplatform/v1/execution.proto"],
    ["google.cloud.aiplatform.v1.Artifact", "google/cloud/aiplatform/v1/artifact.proto"],
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
    module AIPlatform
      module V1
        PipelineJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineJob").msgclass
        PipelineJob::RuntimeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineJob.RuntimeConfig").msgclass
        PipelineJob::RuntimeConfig::InputArtifact = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineJob.RuntimeConfig.InputArtifact").msgclass
        PipelineTemplateMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTemplateMetadata").msgclass
        PipelineJobDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineJobDetail").msgclass
        PipelineTaskDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTaskDetail").msgclass
        PipelineTaskDetail::PipelineTaskStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTaskDetail.PipelineTaskStatus").msgclass
        PipelineTaskDetail::ArtifactList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTaskDetail.ArtifactList").msgclass
        PipelineTaskDetail::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTaskDetail.State").enummodule
        PipelineTaskExecutorDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTaskExecutorDetail").msgclass
        PipelineTaskExecutorDetail::ContainerDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTaskExecutorDetail.ContainerDetail").msgclass
        PipelineTaskExecutorDetail::CustomJobDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.aiplatform.v1.PipelineTaskExecutorDetail.CustomJobDetail").msgclass
      end
    end
  end
end
