# frozen_string_literal: true

# Copyright 2024 Google LLC
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

# [START connectors_v1_generated_Connectors_GetConnectorVersion_sync]
require "google/cloud/connectors/v1"

##
# Snippet for the get_connector_version call in the Connectors service
#
# This snippet has been automatically generated and should be regarded as a code
# template only. It will require modifications to work:
# - It may require correct/in-range values for request initialization.
# - It may require specifying regional endpoints when creating the service
# client as shown in https://cloud.google.com/ruby/docs/reference.
#
# This is an auto-generated example demonstrating basic usage of
# Google::Cloud::Connectors::V1::Connectors::Client#get_connector_version.
#
def get_connector_version
  # Create a client object. The client can be reused for multiple calls.
  client = Google::Cloud::Connectors::V1::Connectors::Client.new

  # Create a request. To set request fields, pass in keyword arguments.
  request = Google::Cloud::Connectors::V1::GetConnectorVersionRequest.new

  # Call the get_connector_version method.
  result = client.get_connector_version request

  # The returned object is of type Google::Cloud::Connectors::V1::ConnectorVersion.
  p result
end
# [END connectors_v1_generated_Connectors_GetConnectorVersion_sync]
