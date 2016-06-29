# Copyright 2015 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "helper"

describe Gcloud::ResourceManager::Project, :iam, :mock_res_man do
  let(:seed) { 123 }
  let(:project_gapi) { random_project_gapi seed }
  let(:project) { Gcloud::ResourceManager::Project.from_gapi project_gapi,
                                                             resource_manager.service }
  let(:old_policy_gapi) {
    Google::Apis::CloudresourcemanagerV1beta1::Policy.new(
      etag: "CAE=",
      bindings: [
        Google::Apis::CloudresourcemanagerV1beta1::Binding.new(
          role: "roles/viewer",
          members: [
            "user:viewer@example.com"
          ]
        )
      ]
    )
  }
  let(:new_policy_gapi) {
    Google::Apis::CloudresourcemanagerV1beta1::Policy.new(
      etag: "CAE=",
      bindings: [
        Google::Apis::CloudresourcemanagerV1beta1::Binding.new(
          role: "roles/viewer",
          members: [
            "user:viewer@example.com",
            "serviceAccount:1234567890@developer.gserviceaccount.com"
          ]
        )
      ]
    )
  }
  let(:old_policy) { Gcloud::ResourceManager::Policy.from_gapi old_policy_gapi }
  let(:new_policy) { Gcloud::ResourceManager::Policy.from_gapi new_policy_gapi }

  it "gets the policy" do
    mock = Minitest::Mock.new
    mock.expect :get_project_iam_policy, old_policy_gapi, ["projects/example-project-123"]

    resource_manager.service.mocked_service = mock
    policy = project.policy
    mock.verify

    policy.must_be_kind_of Gcloud::ResourceManager::Policy
    policy.roles.must_be_kind_of Hash
    policy.roles.size.must_equal 1
    policy.roles["roles/viewer"].must_be_kind_of Array
    policy.roles["roles/viewer"].count.must_equal 1
    policy.roles["roles/viewer"].first.must_equal "user:viewer@example.com"
  end

  it "memoizes policy" do
    project.instance_variable_set "@policy", old_policy

    # No mocks, no errors, no HTTP calls are made
    policy = project.policy
    policy.must_be_kind_of Gcloud::ResourceManager::Policy
    policy.roles.must_be_kind_of Hash
    policy.roles.size.must_equal 1
    policy.roles["roles/viewer"].must_be_kind_of Array
    policy.roles["roles/viewer"].count.must_equal 1
    policy.roles["roles/viewer"].first.must_equal "user:viewer@example.com"
  end

  it "can force load the policy" do
    mock = Minitest::Mock.new
    mock.expect :get_project_iam_policy, new_policy_gapi, ["projects/example-project-123"]

    resource_manager.service.mocked_service = mock
    policy = project.policy force: true
    mock.verify

    policy.must_be_kind_of Gcloud::ResourceManager::Policy
    policy.roles.must_be_kind_of Hash
    policy.roles.size.must_equal 1
    policy.roles["roles/viewer"].must_be_kind_of Array
    policy.roles["roles/viewer"].count.must_equal 2
    policy.roles["roles/viewer"].first.must_equal "user:viewer@example.com"
    policy.roles["roles/viewer"].last.must_equal "serviceAccount:1234567890@developer.gserviceaccount.com"
  end

  it "can force load the policy, even if already memoized" do
    # memoize the policy object
    project.instance_variable_set "@policy", old_policy

    returned_policy = project.policy
    returned_policy.must_be_kind_of Gcloud::ResourceManager::Policy
    returned_policy.roles.must_be_kind_of Hash
    returned_policy.roles.size.must_equal 1
    returned_policy.roles["roles/viewer"].must_be_kind_of Array
    returned_policy.roles["roles/viewer"].count.must_equal 1
    returned_policy.roles["roles/viewer"].first.must_equal "user:viewer@example.com"

    mock = Minitest::Mock.new
    mock.expect :get_project_iam_policy, new_policy_gapi, ["projects/example-project-123"]

    resource_manager.service.mocked_service = mock
    policy = project.policy force: true
    mock.verify

    policy.must_be_kind_of Gcloud::ResourceManager::Policy
    policy.roles.must_be_kind_of Hash
    policy.roles.size.must_equal 1
    policy.roles["roles/viewer"].must_be_kind_of Array
    policy.roles["roles/viewer"].count.must_equal 2
    policy.roles["roles/viewer"].first.must_equal "user:viewer@example.com"
    policy.roles["roles/viewer"].last.must_equal "serviceAccount:1234567890@developer.gserviceaccount.com"
  end

  it "sets the policy" do
    mock = Minitest::Mock.new
    update_policy_request = Google::Apis::CloudresourcemanagerV1beta1::SetIamPolicyRequest.new policy: new_policy_gapi
    mock.expect :set_project_iam_policy, new_policy_gapi, ["projects/example-project-123", update_policy_request]

    resource_manager.service.mocked_service = mock
    project.policy = new_policy
    mock.verify

    # Setting the policy also memoizes the policy
    project.policy.must_be_kind_of Gcloud::ResourceManager::Policy
    project.policy.roles.must_be_kind_of Hash
    project.policy.roles.size.must_equal 1
    project.policy.roles["roles/viewer"].must_be_kind_of Array
    project.policy.roles["roles/viewer"].count.must_equal 2
    project.policy.roles["roles/viewer"].first.must_equal "user:viewer@example.com"
    project.policy.roles["roles/viewer"].last.must_equal "serviceAccount:1234567890@developer.gserviceaccount.com"
  end

  it "sets the policy in a block" do
    # memoize the policy object, to ensure that it is reloaded for update
    project.instance_variable_set "@policy", old_policy

    mock = Minitest::Mock.new
    mock.expect :get_project_iam_policy, old_policy_gapi, ["projects/example-project-123"]

    update_policy_request = Google::Apis::CloudresourcemanagerV1beta1::SetIamPolicyRequest.new policy: new_policy_gapi
    mock.expect :set_project_iam_policy, new_policy_gapi, ["projects/example-project-123", update_policy_request]

    resource_manager.service.mocked_service = mock
    policy = project.policy do |p|
      p.add "roles/viewer", "serviceAccount:1234567890@developer.gserviceaccount.com"
    end
    mock.verify

    policy.must_be_kind_of Gcloud::ResourceManager::Policy
    policy.roles.must_be_kind_of Hash
    project.policy.roles.size.must_equal 1
    project.policy.roles["roles/viewer"].must_be_kind_of Array
    project.policy.roles["roles/viewer"].count.must_equal 2
    project.policy.roles["roles/viewer"].first.must_equal "user:viewer@example.com"
    project.policy.roles["roles/viewer"].last.must_equal "serviceAccount:1234567890@developer.gserviceaccount.com"
  end

  it "tests the permissions available" do
    mock = Minitest::Mock.new
    update_policy_request  = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsRequest.new  permissions: ["resourcemanager.projects.get", "resourcemanager.projects.delete"]
    update_policy_response = Google::Apis::CloudresourcemanagerV1beta1::TestIamPermissionsResponse.new permissions: ["resourcemanager.projects.get"]
    mock.expect :test_project_iam_permissions, update_policy_response, ["projects/example-project-123", update_policy_request]

    resource_manager.service.mocked_service = mock
    permissions = project.test_permissions "resourcemanager.projects.get",
                                           "resourcemanager.projects.delete"
    mock.verify

    permissions.must_equal ["resourcemanager.projects.get"]
  end
end
