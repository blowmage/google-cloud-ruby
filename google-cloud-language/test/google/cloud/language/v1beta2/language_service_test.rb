# frozen_string_literal: true

# Copyright 2018 Google LLC
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

# Auto-generated by gapic-generator-ruby v0.0.1.dev.1. DO NOT EDIT!

require "minitest/autorun"

require "google/cloud/language/v1beta2/language_service_pb"
require "google/cloud/language/v1beta2/language_service_services_pb"
require "google/cloud/language/v1beta2/language_service"

class CustomTestErrorV1 < StandardError; end
# Mock for the GRPC::ClientStub class.
class MockGrpcClientStubV1
  # @param expected_symbol [Symbol] the symbol of the grpc method to be mocked.
  # @param mock_method [Proc] The method that is being mocked.
  def initialize expected_symbol, mock_method
    @expected_symbol = expected_symbol
    @mock_method = mock_method
  end

  # This overrides the Object#method method to return the mocked method when the mocked method
  # is being requested. For methods that aren"t being tested, this method returns a proc that
  # will raise an error when called. This is to assure that only the mocked grpc method is being
  # called.
  #
  # @param symbol [Symbol] The symbol of the method being requested.
  # @return [Proc] The proc of the requested method. If the requested method is not being mocked
  #   the proc returned will raise when called.
  def method symbol
    return @mock_method if symbol == @expected_symbol

    # The requested method is not being tested, raise if it called.
    proc do
      raise "The method #{symbol} was unexpectedly called during the " \
        "test for #{@expected_symbol}."
    end
  end
end

class MockLanguageServiceCredentialsV1beta2 < Google::Cloud::Language::V1beta2::LanguageService::Credentials
  def initialize method_name
    @method_name = method_name
  end

  def updater_proc
    proc do
      raise "The method `#{@method_name}` was trying to make a grpc request. This should not " \
          "happen since the grpc layer is being mocked."
    end
  end
end

describe Google::Cloud::Language::V1beta2::LanguageService::Client do
  describe "analyze_sentiment" do
    let :custom_error do
      CustomTestErrorV1.new "Custom test error for Google::Cloud::Language::V1beta2::LanguageService::Client#analyze_sentiment."
    end

    it "invokes analyze_sentiment without error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Create expected grpc response
      expected_response = {}
      expected_response = Gapic::Protobuf.coerce expected_response, to: Google::Cloud::Language::V1beta2::AnalyzeSentimentResponse

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeSentimentRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        OpenStruct.new execute: expected_response
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_sentiment, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_sentiment"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          response = client.analyze_sentiment document, encoding_type

          # Verify the response
          assert_equal expected_response, response

          # Call method with block
          client.analyze_sentiment document, encoding_type do |resp, operation|
            # Verify the response
            assert_equal expected_response, resp
            refute_nil operation
          end
        end
      end
    end

    it "invokes analyze_sentiment with error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeSentimentRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        raise custom_error
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_sentiment, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_sentiment"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          err = assert_raises Google::Cloud::Error do
            client.analyze_sentiment document, encoding_type
          end

          # Verify the GapicError wrapped the custom error that was raised.
          assert_match custom_error.message, err.message
        end
      end
    end
  end

  describe "analyze_entities" do
    let :custom_error do
      CustomTestErrorV1.new "Custom test error for Google::Cloud::Language::V1beta2::LanguageService::Client#analyze_entities."
    end

    it "invokes analyze_entities without error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Create expected grpc response
      expected_response = {}
      expected_response = Gapic::Protobuf.coerce expected_response, to: Google::Cloud::Language::V1beta2::AnalyzeEntitiesResponse

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeEntitiesRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        OpenStruct.new execute: expected_response
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_entities, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_entities"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          response = client.analyze_entities document, encoding_type

          # Verify the response
          assert_equal expected_response, response

          # Call method with block
          client.analyze_entities document, encoding_type do |resp, operation|
            # Verify the response
            assert_equal expected_response, resp
            refute_nil operation
          end
        end
      end
    end

    it "invokes analyze_entities with error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeEntitiesRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        raise custom_error
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_entities, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_entities"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          err = assert_raises Google::Cloud::Error do
            client.analyze_entities document, encoding_type
          end

          # Verify the GapicError wrapped the custom error that was raised.
          assert_match custom_error.message, err.message
        end
      end
    end
  end

  describe "analyze_entity_sentiment" do
    let :custom_error do
      CustomTestErrorV1.new "Custom test error for Google::Cloud::Language::V1beta2::LanguageService::Client#analyze_entity_sentiment."
    end

    it "invokes analyze_entity_sentiment without error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Create expected grpc response
      expected_response = {}
      expected_response = Gapic::Protobuf.coerce expected_response, to: Google::Cloud::Language::V1beta2::AnalyzeEntitySentimentResponse

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeEntitySentimentRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        OpenStruct.new execute: expected_response
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_entity_sentiment, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_entity_sentiment"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          response = client.analyze_entity_sentiment document, encoding_type

          # Verify the response
          assert_equal expected_response, response

          # Call method with block
          client.analyze_entity_sentiment document, encoding_type do |resp, operation|
            # Verify the response
            assert_equal expected_response, resp
            refute_nil operation
          end
        end
      end
    end

    it "invokes analyze_entity_sentiment with error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeEntitySentimentRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        raise custom_error
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_entity_sentiment, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_entity_sentiment"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          err = assert_raises Google::Cloud::Error do
            client.analyze_entity_sentiment document, encoding_type
          end

          # Verify the GapicError wrapped the custom error that was raised.
          assert_match custom_error.message, err.message
        end
      end
    end
  end

  describe "analyze_syntax" do
    let :custom_error do
      CustomTestErrorV1.new "Custom test error for Google::Cloud::Language::V1beta2::LanguageService::Client#analyze_syntax."
    end

    it "invokes analyze_syntax without error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Create expected grpc response
      expected_response = {}
      expected_response = Gapic::Protobuf.coerce expected_response, to: Google::Cloud::Language::V1beta2::AnalyzeSyntaxResponse

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeSyntaxRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        OpenStruct.new execute: expected_response
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_syntax, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_syntax"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          response = client.analyze_syntax document, encoding_type

          # Verify the response
          assert_equal expected_response, response

          # Call method with block
          client.analyze_syntax document, encoding_type do |resp, operation|
            # Verify the response
            assert_equal expected_response, resp
            refute_nil operation
          end
        end
      end
    end

    it "invokes analyze_syntax with error" do
      # Create request parameters
      document = {}
      encoding_type = :NONE

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnalyzeSyntaxRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        raise custom_error
      end
      mock_stub = MockGrpcClientStubV1.new :analyze_syntax, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "analyze_syntax"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          err = assert_raises Google::Cloud::Error do
            client.analyze_syntax document, encoding_type
          end

          # Verify the GapicError wrapped the custom error that was raised.
          assert_match custom_error.message, err.message
        end
      end
    end
  end

  describe "classify_text" do
    let :custom_error do
      CustomTestErrorV1.new "Custom test error for Google::Cloud::Language::V1beta2::LanguageService::Client#classify_text."
    end

    it "invokes classify_text without error" do
      # Create request parameters
      document = {}

      # Create expected grpc response
      expected_response = {}
      expected_response = Gapic::Protobuf.coerce expected_response, to: Google::Cloud::Language::V1beta2::ClassifyTextResponse

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::ClassifyTextRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        OpenStruct.new execute: expected_response
      end
      mock_stub = MockGrpcClientStubV1.new :classify_text, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "classify_text"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          response = client.classify_text document

          # Verify the response
          assert_equal expected_response, response

          # Call method with block
          client.classify_text document do |resp, operation|
            # Verify the response
            assert_equal expected_response, resp
            refute_nil operation
          end
        end
      end
    end

    it "invokes classify_text with error" do
      # Create request parameters
      document = {}

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::ClassifyTextRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        raise custom_error
      end
      mock_stub = MockGrpcClientStubV1.new :classify_text, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "classify_text"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          err = assert_raises Google::Cloud::Error do
            client.classify_text document
          end

          # Verify the GapicError wrapped the custom error that was raised.
          assert_match custom_error.message, err.message
        end
      end
    end
  end

  describe "annotate_text" do
    let :custom_error do
      CustomTestErrorV1.new "Custom test error for Google::Cloud::Language::V1beta2::LanguageService::Client#annotate_text."
    end

    it "invokes annotate_text without error" do
      # Create request parameters
      document = {}
      features = {}
      encoding_type = :NONE

      # Create expected grpc response
      expected_response = {}
      expected_response = Gapic::Protobuf.coerce expected_response, to: Google::Cloud::Language::V1beta2::AnnotateTextResponse

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnnotateTextRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(features, to: Google::Cloud::Language::V1beta2::AnnotateTextRequest::Features), request.features
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        OpenStruct.new execute: expected_response
      end
      mock_stub = MockGrpcClientStubV1.new :annotate_text, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "annotate_text"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          response = client.annotate_text document, features, encoding_type

          # Verify the response
          assert_equal expected_response, response

          # Call method with block
          client.annotate_text document, features, encoding_type do |resp, operation|
            # Verify the response
            assert_equal expected_response, resp
            refute_nil operation
          end
        end
      end
    end

    it "invokes annotate_text with error" do
      # Create request parameters
      document = {}
      features = {}
      encoding_type = :NONE

      # Mock Grpc layer
      mock_method = proc do |request|
        assert_instance_of Google::Cloud::Language::V1beta2::AnnotateTextRequest, request
        assert_equal Gapic::Protobuf.coerce(document, to: Google::Cloud::Language::V1beta2::Document), request.document
        assert_equal Gapic::Protobuf.coerce(features, to: Google::Cloud::Language::V1beta2::AnnotateTextRequest::Features), request.features
        assert_equal Gapic::Protobuf.coerce(encoding_type, to: Google::Cloud::Language::V1beta2::EncodingType), request.encoding_type
        raise custom_error
      end
      mock_stub = MockGrpcClientStubV1.new :annotate_text, mock_method

      # Mock auth layer
      mock_credentials = MockSpeechCredentialsV1.new "annotate_text"

      Google::Cloud::Language::V1beta2::LanguageService::Stub.stub :new, mock_stub do
        Google::Cloud::Language::V1beta2::LanguageService::Credentials.stub :default, mock_credentials do
          client = Google::Cloud::Language::V1beta2::LanguageService::Client.new

          # Call method
          err = assert_raises Google::Cloud::Error do
            client.annotate_text document, features, encoding_type
          end

          # Verify the GapicError wrapped the custom error that was raised.
          assert_match custom_error.message, err.message
        end
      end
    end
  end
end
