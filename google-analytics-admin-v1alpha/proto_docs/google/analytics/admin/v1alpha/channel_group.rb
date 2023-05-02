# frozen_string_literal: true

# Copyright 2023 Google LLC
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
  module Analytics
    module Admin
      module V1alpha
        # A specific filter for a single dimension.
        # @!attribute [rw] string_filter
        #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilter::StringFilter]
        #     A filter for a string-type dimension that matches a particular pattern.
        # @!attribute [rw] in_list_filter
        #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilter::InListFilter]
        #     A filter for a string dimension that matches a particular list of
        #     options.
        # @!attribute [rw] field_name
        #   @return [::String]
        #     Required. Immutable. The dimension name to filter.
        class ChannelGroupFilter
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Filter where the field value is a String. The match is case insensitive.
          # @!attribute [rw] match_type
          #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilter::StringFilter::MatchType]
          #     Required. The match type for the string filter.
          # @!attribute [rw] value
          #   @return [::String]
          #     Required. The string value to be matched against.
          class StringFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # How the filter will be used to determine a match.
            module MatchType
              # Default match type.
              MATCH_TYPE_UNSPECIFIED = 0

              # Exact match of the string value.
              EXACT = 1

              # Begins with the string value.
              BEGINS_WITH = 2

              # Ends with the string value.
              ENDS_WITH = 3

              # Contains the string value.
              CONTAINS = 4

              # Full regular expression match with the string value.
              FULL_REGEXP = 5

              # Partial regular expression match with the string value.
              PARTIAL_REGEXP = 6
            end
          end

          # A filter for a string dimension that matches a particular list of options.
          # The match is case insensitive.
          # @!attribute [rw] values
          #   @return [::Array<::String>]
          #     Required. The list of possible string values to match against. Must be
          #     non-empty.
          class InListFilter
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A logical expression of Channel Group dimension filters.
        # @!attribute [rw] and_group
        #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilterExpressionList]
        #     A list of expressions to be AND’ed together. It can only contain
        #     ChannelGroupFilterExpressions with or_group. This must be set for the
        #     top level ChannelGroupFilterExpression.
        # @!attribute [rw] or_group
        #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilterExpressionList]
        #     A list of expressions to OR’ed together. It cannot contain
        #     ChannelGroupFilterExpressions with and_group or or_group.
        # @!attribute [rw] not_expression
        #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilterExpression]
        #     A filter expression to be NOT'ed (that is inverted, complemented). It
        #     can only include a dimension_or_metric_filter. This cannot be set on the
        #     top level ChannelGroupFilterExpression.
        # @!attribute [rw] filter
        #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilter]
        #     A filter on a single dimension. This cannot be set on the top
        #     level ChannelGroupFilterExpression.
        class ChannelGroupFilterExpression
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A list of Channel Group filter expressions.
        # @!attribute [rw] filter_expressions
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::ChannelGroupFilterExpression>]
        #     A list of Channel Group filter expressions.
        class ChannelGroupFilterExpressionList
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The rules that govern how traffic is grouped into one channel.
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. Customer defined display name for the channel.
        # @!attribute [rw] expression
        #   @return [::Google::Analytics::Admin::V1alpha::ChannelGroupFilterExpression]
        #     Required. The Filter Expression that defines the Grouping Rule.
        class GroupingRule
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # A resource message representing a Channel Group.
        # @!attribute [r] name
        #   @return [::String]
        #     Output only. The resource name for this Channel Group resource.
        #     Format: properties/\\{property}/channelGroups/\\{channel_group}
        # @!attribute [rw] display_name
        #   @return [::String]
        #     Required. The display name of the Channel Group. Max length of 80
        #     characters.
        # @!attribute [rw] description
        #   @return [::String]
        #     The description of the Channel Group. Max length of 256 characters.
        # @!attribute [rw] grouping_rule
        #   @return [::Array<::Google::Analytics::Admin::V1alpha::GroupingRule>]
        #     Required. The grouping rules of channels. Maximum number of rules is 25.
        # @!attribute [r] system_defined
        #   @return [::Boolean]
        #     Output only. Default Channel Group defined by Google, which cannot be
        #     updated.
        class ChannelGroup
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end