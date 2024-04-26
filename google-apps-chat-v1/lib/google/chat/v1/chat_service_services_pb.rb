# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/chat/v1/chat_service.proto for package 'Google.Apps.Chat.V1'
# Original file comments:
# Copyright 2023 Google LLC
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
#

require 'grpc'
require 'google/chat/v1/chat_service_pb'

module Google
  module Apps
    module Chat
      module V1
        module ChatService
          # Enables developers to build Chat apps and
          # integrations on Google Chat Platform.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.chat.v1.ChatService'

            # Creates a message in a Google Chat space. For an example, see [Send a
            # message](https://developers.google.com/workspace/chat/create-messages).
            #
            # Calling this method requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize)
            # and supports the following authentication types:
            #
            # - For text messages, user authentication or app authentication are
            # supported.
            # - For card messages, only app authentication is supported. (Only Chat apps
            # can create card messages.)
            rpc :CreateMessage, ::Google::Apps::Chat::V1::CreateMessageRequest, ::Google::Apps::Chat::V1::Message
            # Lists messages in a space that the caller is a member of, including
            # messages from blocked members and spaces. For an example, see
            # [List messages](/chat/api/guides/v1/messages/list).
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :ListMessages, ::Google::Apps::Chat::V1::ListMessagesRequest, ::Google::Apps::Chat::V1::ListMessagesResponse
            # Lists memberships in a space. For an example, see [List users and Google
            # Chat apps in a
            # space](https://developers.google.com/workspace/chat/list-members). Listing
            # memberships with [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # lists memberships in spaces that the Chat app has
            # access to, but excludes Chat app memberships,
            # including its own. Listing memberships with
            # [User
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user)
            # lists memberships in spaces that the authenticated user has access to.
            #
            # Requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize).
            # Supports
            # [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # and [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :ListMemberships, ::Google::Apps::Chat::V1::ListMembershipsRequest, ::Google::Apps::Chat::V1::ListMembershipsResponse
            # Returns details about a membership. For an example, see
            # [Get details about a user's or Google Chat app's
            # membership](https://developers.google.com/workspace/chat/get-members).
            #
            # Requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize).
            # Supports
            # [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # and [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :GetMembership, ::Google::Apps::Chat::V1::GetMembershipRequest, ::Google::Apps::Chat::V1::Membership
            # Returns details about a message.
            # For an example, see [Get details about a
            # message](https://developers.google.com/workspace/chat/get-messages).
            #
            # Requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize).
            # Supports
            # [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # and [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            #
            # Note: Might return a message from a blocked member or space.
            rpc :GetMessage, ::Google::Apps::Chat::V1::GetMessageRequest, ::Google::Apps::Chat::V1::Message
            # Updates a message. There's a difference between the `patch` and `update`
            # methods. The `patch`
            # method uses a `patch` request while the `update` method uses a `put`
            # request. We recommend using the `patch` method. For an example, see
            # [Update a
            # message](https://developers.google.com/workspace/chat/update-messages).
            #
            # Requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize).
            # Supports
            # [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # and [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            # When using app authentication, requests can only update messages
            # created by the calling Chat app.
            rpc :UpdateMessage, ::Google::Apps::Chat::V1::UpdateMessageRequest, ::Google::Apps::Chat::V1::Message
            # Deletes a message.
            # For an example, see [Delete a
            # message](https://developers.google.com/workspace/chat/delete-messages).
            #
            # Requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize).
            # Supports
            # [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # and [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            # When using app authentication, requests can only delete messages
            # created by the calling Chat app.
            rpc :DeleteMessage, ::Google::Apps::Chat::V1::DeleteMessageRequest, ::Google::Protobuf::Empty
            # Gets the metadata of a message attachment. The attachment data is fetched
            # using the [media
            # API](https://developers.google.com/workspace/chat/api/reference/rest/v1/media/download).
            # For an example, see
            # [Get metadata about a message
            # attachment](https://developers.google.com/workspace/chat/get-media-attachments).
            # Requires [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app).
            rpc :GetAttachment, ::Google::Apps::Chat::V1::GetAttachmentRequest, ::Google::Apps::Chat::V1::Attachment
            # Uploads an attachment. For an example, see
            # [Upload media as a file
            # attachment](https://developers.google.com/workspace/chat/upload-media-attachments).
            # Requires user
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            #
            # You can upload attachments up to 200 MB. Certain file types aren't
            # supported. For details, see [File types blocked by Google
            # Chat](https://support.google.com/chat/answer/7651457?&co=GENIE.Platform%3DDesktop#File%20types%20blocked%20in%20Google%20Chat).
            rpc :UploadAttachment, ::Google::Apps::Chat::V1::UploadAttachmentRequest, ::Google::Apps::Chat::V1::UploadAttachmentResponse
            # Lists spaces the caller is a member of. Group chats and DMs aren't listed
            # until the first message is sent. For an example, see
            # [List
            # spaces](https://developers.google.com/workspace/chat/list-spaces).
            #
            # Requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize).
            # Supports
            # [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # and [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            #
            # Lists spaces visible to the caller or authenticated user. Group chats
            # and DMs aren't listed until the first message is sent.
            rpc :ListSpaces, ::Google::Apps::Chat::V1::ListSpacesRequest, ::Google::Apps::Chat::V1::ListSpacesResponse
            # Returns details about a space. For an example, see
            # [Get details about a
            # space](https://developers.google.com/workspace/chat/get-spaces).
            #
            # Requires
            # [authentication](https://developers.google.com/workspace/chat/authenticate-authorize).
            # Supports
            # [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app)
            # and [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :GetSpace, ::Google::Apps::Chat::V1::GetSpaceRequest, ::Google::Apps::Chat::V1::Space
            # Creates a named space. Spaces grouped by topics aren't supported. For an
            # example, see [Create a
            # space](https://developers.google.com/workspace/chat/create-spaces).
            #
            #  If you receive the error message `ALREADY_EXISTS` when creating
            #  a space, try a different `displayName`. An existing space within
            #  the Google Workspace organization might already use this display name.
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :CreateSpace, ::Google::Apps::Chat::V1::CreateSpaceRequest, ::Google::Apps::Chat::V1::Space
            # Creates a space and adds specified users to it. The calling user is
            # automatically added to the space, and shouldn't be specified as a
            # membership in the request. For an example, see
            # [Set up a space with initial
            # members](https://developers.google.com/workspace/chat/set-up-spaces).
            #
            # To specify the human members to add, add memberships with the appropriate
            # `member.name` in the `SetUpSpaceRequest`. To add a human user, use
            # `users/{user}`, where `{user}` can be the email address for the user. For
            # users in the same Workspace organization `{user}` can also be the `id` for
            # the person from the People API, or the `id` for the user in the Directory
            # API. For example, if the People API Person profile ID for
            # `user@example.com` is `123456789`, you can add the user to the space by
            # setting the `membership.member.name` to `users/user@example.com` or
            # `users/123456789`.
            #
            # For a space or group chat, if the caller blocks or is blocked by some
            # members, then those members aren't added to the created space.
            #
            # To create a direct message (DM) between the calling user and another human
            # user, specify exactly one membership to represent the human user. If
            # one user blocks the other, the request fails and the DM isn't created.
            #
            # To create a DM between the calling user and the calling app, set
            # `Space.singleUserBotDm` to `true` and don't specify any memberships. You
            # can only use this method to set up a DM with the calling app. To add the
            # calling app as a member of a space or an existing DM between two human
            # users, see
            # [Invite or add a user or app to a
            # space](https://developers.google.com/workspace/chat/create-members).
            #
            # If a DM already exists between two users, even when one user blocks the
            # other at the time a request is made, then the existing DM is returned.
            #
            # Spaces with threaded replies aren't supported. If you receive the error
            # message `ALREADY_EXISTS` when setting up a space, try a different
            # `displayName`. An existing space within the Google Workspace organization
            # might already use this display name.
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :SetUpSpace, ::Google::Apps::Chat::V1::SetUpSpaceRequest, ::Google::Apps::Chat::V1::Space
            # Updates a space. For an example, see
            # [Update a
            # space](https://developers.google.com/workspace/chat/update-spaces).
            #
            # If you're updating the `displayName` field and receive the error message
            # `ALREADY_EXISTS`, try a different display name.. An existing space within
            # the Google Workspace organization might already use this display name.
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :UpdateSpace, ::Google::Apps::Chat::V1::UpdateSpaceRequest, ::Google::Apps::Chat::V1::Space
            # Deletes a named space. Always performs a cascading delete, which means
            # that the space's child resources—like messages posted in the space and
            # memberships in the space—are also deleted. For an example, see
            # [Delete a
            # space](https://developers.google.com/workspace/chat/delete-spaces).
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user)
            # from a user who has permission to delete the space.
            rpc :DeleteSpace, ::Google::Apps::Chat::V1::DeleteSpaceRequest, ::Google::Protobuf::Empty
            # Completes the
            # [import process](https://developers.google.com/workspace/chat/import-data)
            # for the specified space and makes it visible to users.
            # Requires app authentication and domain-wide delegation. For more
            # information, see [Authorize Google Chat apps to import
            # data](https://developers.google.com/workspace/chat/authorize-import).
            rpc :CompleteImportSpace, ::Google::Apps::Chat::V1::CompleteImportSpaceRequest, ::Google::Apps::Chat::V1::CompleteImportSpaceResponse
            # Returns the existing direct message with the specified user. If no direct
            # message space is found, returns a `404 NOT_FOUND` error. For an example,
            # see
            # [Find a direct message](/chat/api/guides/v1/spaces/find-direct-message).
            #
            # With [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user),
            # returns the direct message space between the specified user and the
            # authenticated user.
            #
            # With [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app),
            # returns the direct message space between the specified user and the calling
            # Chat app.
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user)
            # or [app
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-app).
            rpc :FindDirectMessage, ::Google::Apps::Chat::V1::FindDirectMessageRequest, ::Google::Apps::Chat::V1::Space
            # Creates a human membership or app membership for the calling app. Creating
            # memberships for other apps isn't supported. For an example, see
            # [Invite or add a user or a Google Chat app to a
            # space](https://developers.google.com/workspace/chat/create-members).
            # When creating a membership, if the specified member has their auto-accept
            # policy turned off, then they're invited, and must accept the space
            # invitation before joining. Otherwise, creating a membership adds the member
            # directly to the specified space. Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            #
            # To specify the member to add, set the `membership.member.name` in the
            # `CreateMembershipRequest`:
            #
            # - To add the calling app to a space or a direct message between two human
            #   users, use `users/app`. Unable to add other
            #   apps to the space.
            #
            # - To add a human user, use `users/{user}`, where `{user}` can be the email
            # address for the user. For users in the same Workspace organization `{user}`
            # can also be the `id` for the person from the People API, or the `id` for
            # the user in the Directory API. For example, if the People API Person
            # profile ID for `user@example.com` is `123456789`, you can add the user to
            # the space by setting the `membership.member.name` to
            # `users/user@example.com` or `users/123456789`.
            rpc :CreateMembership, ::Google::Apps::Chat::V1::CreateMembershipRequest, ::Google::Apps::Chat::V1::Membership
            # Updates a membership. Requires [user
            # authentication](https://developers.google.com/chat/api/guides/auth/users).
            rpc :UpdateMembership, ::Google::Apps::Chat::V1::UpdateMembershipRequest, ::Google::Apps::Chat::V1::Membership
            # Deletes a membership. For an example, see
            # [Remove a user or a Google Chat app from a
            # space](https://developers.google.com/workspace/chat/delete-members).
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :DeleteMembership, ::Google::Apps::Chat::V1::DeleteMembershipRequest, ::Google::Apps::Chat::V1::Membership
            # Creates a reaction and adds it to a message. Only unicode emojis are
            # supported. For an example, see
            # [Add a reaction to a
            # message](https://developers.google.com/workspace/chat/create-reactions).
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :CreateReaction, ::Google::Apps::Chat::V1::CreateReactionRequest, ::Google::Apps::Chat::V1::Reaction
            # Lists reactions to a message. For an example, see
            # [List reactions for a
            # message](https://developers.google.com/workspace/chat/list-reactions).
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :ListReactions, ::Google::Apps::Chat::V1::ListReactionsRequest, ::Google::Apps::Chat::V1::ListReactionsResponse
            # Deletes a reaction to a message. Only unicode emojis are supported.
            # For an example, see
            # [Delete a
            # reaction](https://developers.google.com/workspace/chat/delete-reactions).
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :DeleteReaction, ::Google::Apps::Chat::V1::DeleteReactionRequest, ::Google::Protobuf::Empty
            # Returns details about a user's read state within a space, used to identify
            # read and unread messages.
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :GetSpaceReadState, ::Google::Apps::Chat::V1::GetSpaceReadStateRequest, ::Google::Apps::Chat::V1::SpaceReadState
            # Updates a user's read state within a space, used to identify read and
            # unread messages.
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :UpdateSpaceReadState, ::Google::Apps::Chat::V1::UpdateSpaceReadStateRequest, ::Google::Apps::Chat::V1::SpaceReadState
            # Returns details about a user's read state within a thread, used to identify
            # read and unread messages.
            #
            # Requires [user
            # authentication](https://developers.google.com/workspace/chat/authenticate-authorize-chat-user).
            rpc :GetThreadReadState, ::Google::Apps::Chat::V1::GetThreadReadStateRequest, ::Google::Apps::Chat::V1::ThreadReadState
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
