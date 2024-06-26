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

require "gapic/rest"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/security/public_ca/v1/version"

require "google/cloud/security/public_ca/v1/public_certificate_authority_service/credentials"
require "google/cloud/security/public_ca/v1/public_certificate_authority_service/paths"
require "google/cloud/security/public_ca/v1/public_certificate_authority_service/rest/client"

module Google
  module Cloud
    module Security
      module PublicCA
        module V1
          ##
          # Manages the resources required for ACME [external account
          # binding](https://tools.ietf.org/html/rfc8555#section-7.3.4) for
          # the public certificate authority service.
          #
          # To load this service and instantiate a REST client:
          #
          #     require "google/cloud/security/public_ca/v1/public_certificate_authority_service/rest"
          #     client = ::Google::Cloud::Security::PublicCA::V1::PublicCertificateAuthorityService::Rest::Client.new
          #
          module PublicCertificateAuthorityService
            # Client for the REST transport
            module Rest
            end
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "rest", "helpers.rb"
require "google/cloud/security/public_ca/v1/public_certificate_authority_service/rest/helpers" if ::File.file? helper_path
