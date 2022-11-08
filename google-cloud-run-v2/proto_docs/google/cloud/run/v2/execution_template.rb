# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Run
      module V2
        # ExecutionTemplate describes the data an execution should have when created
        # from a template.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style labels for the resource.
        # @!attribute [rw] annotations
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     KRM-style annotations for the resource.
        # @!attribute [rw] parallelism
        #   @return [::Integer]
        #     Specifies the maximum desired number of tasks the execution should run at
        #     given time. Must be <= task_count.
        #     When the job is run, if this field is 0 or unset, the maximum possible
        #     value will be used for that execution.
        #     The actual number of tasks running in steady state will be less than this
        #     number when there are fewer tasks waiting to be completed remaining,
        #     i.e. when the work left to do is less than max parallelism.
        # @!attribute [rw] task_count
        #   @return [::Integer]
        #     Specifies the desired number of tasks the execution should run.
        #     Setting to 1 means that parallelism is limited to 1 and the success of
        #     that task signals the success of the execution.
        #     More info:
        #     https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
        # @!attribute [rw] template
        #   @return [::Google::Cloud::Run::V2::TaskTemplate]
        #     Required. Describes the task(s) that will be created when executing an execution.
        class ExecutionTemplate
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class AnnotationsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end