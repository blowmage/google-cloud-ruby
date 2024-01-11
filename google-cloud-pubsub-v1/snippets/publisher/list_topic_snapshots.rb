# frozen_string_literal: true

# Copyright 2021 Google LLC
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

# [START pubsub_v1_generated_Publisher_ListTopicSnapshots_sync]
require "google/cloud/pubsub/v1"

##
# Snippet for the list_topic_snapshots call in the Publisher service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::PubSub::V1::Publisher::Client#list_topic_snapshots.
#
def list_topic_snapshots
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::PubSub::V1::Publisher::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::PubSub::V1::ListTopicSnapshotsRequest.new

  # Call the list_topic_snapshots method.
  result = client.list_topic_snapshots request

  # The returned object is of type Google::Cloud::PubSub::V1::ListTopicSnapshotsResponse.
  p result
end
# [END pubsub_v1_generated_Publisher_ListTopicSnapshots_sync]
