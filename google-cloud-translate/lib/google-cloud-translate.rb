# Copyright 2016 Google Inc. All rights reserved.
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

##
# This file is here to be autorequired by bundler, so that the .bigquery and
# #bigquery methods can be available, but the library and all dependencies won't
# be loaded until required and used.


gem "google-cloud-core"
require "google/cloud"

module Google
  module Cloud
    ##
    # Creates a new object for connecting to the Translate service.
    # Each call creates a new connection.
    #
    # Unlike other Cloud Platform services, which authenticate using a project
    # ID and OAuth 2.0 credentials, Google Translate API requires a public API
    # access key. (This may change in future releases of Google Translate API.)
    # Follow the general instructions at [Identifying your application to
    # Google](https://cloud.google.com/translate/v2/using_rest#auth), and the
    # specific instructions for [Server
    # keys](https://cloud.google.com/translate/v2/using_rest#creating-server-api-keys).
    #
    # @param [String] key a public API access key (not an OAuth 2.0 token)
    # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
    #   set of resources and operations that the connection can access. See
    #   [Using OAuth 2.0 to Access Google
    #   APIs](https://developers.google.com/identity/protocols/OAuth2).
    #
    #   The default scope is:
    #
    #   * `https://www.googleapis.com/auth/cloud-platform`
    # @param [Integer] retries Number of times to retry requests on server
    #   error. The default value is `3`. Optional.
    # @param [Integer] timeout Default timeout to use in requests. Optional.
    #
    # @return [Google::Cloud::Translate::Api]
    #
    # @example
    #   require "google/cloud"
    #
    #   gcloud = Google::Cloud.new
    #   translate = gcloud.translate "api-key-abc123XYZ789"
    #
    #   translation = translate.translate "Hello world!", to: "la"
    #   translation.text #=> "Salve mundi!"
    #
    # @example Using API Key from the environment variable.
    #   require "google/cloud"
    #
    #   ENV["TRANSLATE_KEY"] = "api-key-abc123XYZ789"
    #
    #   gcloud = Google::Cloud.new
    #   translate = gcloud.translate
    #
    #   translation = translate.translate "Hello world!", to: "la"
    #   translation.text #=> "Salve mundi!"
    #
    def translate key = nil, scope: nil, retries: nil, timeout: nil
      Google::Cloud.translate key, project: @project, keyfile: @keyfile,
                                   scope: scope,
                                   retries: (retries || @retries),
                                   timeout: (timeout || @timeout)
    end

    ##
    # Creates a new object for connecting to the Translate service.
    # Each call creates a new connection.
    #
    # Unlike other Cloud Platform services, which authenticate using a project
    # ID and OAuth 2.0 credentials, Google Translate API requires a public API
    # access key. (This may change in future releases of Google Translate API.)
    # Follow the general instructions at [Identifying your application to
    # Google](https://cloud.google.com/translate/v2/using_rest#auth), and the
    # specific instructions for [Server
    # keys](https://cloud.google.com/translate/v2/using_rest#creating-server-api-keys).
    #
    # @param [String] key a public API access key (not an OAuth 2.0 token)
    # @param [String] project Project identifier for the Translate service you
    #   are connecting to.
    # @param [String, Hash] keyfile Keyfile downloaded from Google Cloud. If
    #   file path the file must be readable.
    # @param [String, Array<String>] scope The OAuth 2.0 scopes controlling the
    #   set of resources and operations that the connection can access. See
    #   [Using OAuth 2.0 to Access Google
    #   APIs](https://developers.google.com/identity/protocols/OAuth2).
    #
    #   The default scope is:
    #
    #   * `https://www.googleapis.com/auth/cloud-platform`
    # @param [Integer] retries Number of times to retry requests on server
    #   error. The default value is `3`. Optional.
    # @param [Integer] timeout Default timeout to use in requests. Optional.
    #
    # @return [Google::Cloud::Translate::Api]
    #
    # @example
    #   require "google/cloud"
    #
    #   translate = Google::Cloud.translate "api-key-abc123XYZ789"
    #
    #   translation = translate.translate "Hello world!", to: "la"
    #   translation.text #=> "Salve mundi!"
    #
    # @example Using API Key from the environment variable.
    #   require "google/cloud"
    #
    #   ENV["TRANSLATE_KEY"] = "api-key-abc123XYZ789"
    #
    #   translate = Google::Cloud.translate
    #
    #   translation = translate.translate "Hello world!", to: "la"
    #   translation.text #=> "Salve mundi!"
    #
    def self.translate key = nil, project: nil, keyfile: nil, scope: nil,
                       retries: nil, timeout: nil
      require "google/cloud/translate"
      Google::Cloud::Translate.new key: key, project: project, keyfile: keyfile,
                                   scope: scope, retries: retries,
                                   timeout: timeout
    end
  end
end
