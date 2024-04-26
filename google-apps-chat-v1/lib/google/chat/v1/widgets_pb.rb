# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/chat/v1/widgets.proto

require 'google/protobuf'


descriptor_data = "\n\x1cgoogle/chat/v1/widgets.proto\x12\x0egoogle.chat.v1\"\xf5\x0e\n\x0cWidgetMarkup\x12\x44\n\x0etext_paragraph\x18\x01 \x01(\x0b\x32*.google.chat.v1.WidgetMarkup.TextParagraphH\x00\x12\x33\n\x05image\x18\x02 \x01(\x0b\x32\".google.chat.v1.WidgetMarkup.ImageH\x00\x12:\n\tkey_value\x18\x03 \x01(\x0b\x32%.google.chat.v1.WidgetMarkup.KeyValueH\x00\x12\x34\n\x07\x62uttons\x18\x06 \x03(\x0b\x32#.google.chat.v1.WidgetMarkup.Button\x1a\x1d\n\rTextParagraph\x12\x0c\n\x04text\x18\x01 \x01(\t\x1a\x92\x01\n\x06\x42utton\x12>\n\x0btext_button\x18\x01 \x01(\x0b\x32\'.google.chat.v1.WidgetMarkup.TextButtonH\x00\x12@\n\x0cimage_button\x18\x02 \x01(\x0b\x32(.google.chat.v1.WidgetMarkup.ImageButtonH\x00\x42\x06\n\x04type\x1aR\n\nTextButton\x12\x0c\n\x04text\x18\x01 \x01(\t\x12\x36\n\x08on_click\x18\x02 \x01(\x0b\x32$.google.chat.v1.WidgetMarkup.OnClick\x1a\xa9\x02\n\x08KeyValue\x12\x31\n\x04icon\x18\x01 \x01(\x0e\x32!.google.chat.v1.WidgetMarkup.IconH\x00\x12\x12\n\x08icon_url\x18\x02 \x01(\tH\x00\x12\x11\n\ttop_label\x18\x03 \x01(\t\x12\x0f\n\x07\x63ontent\x18\x04 \x01(\t\x12\x19\n\x11\x63ontent_multiline\x18\t \x01(\x08\x12\x14\n\x0c\x62ottom_label\x18\x05 \x01(\t\x12\x36\n\x08on_click\x18\x06 \x01(\x0b\x32$.google.chat.v1.WidgetMarkup.OnClick\x12\x35\n\x06\x62utton\x18\x07 \x01(\x0b\x32#.google.chat.v1.WidgetMarkup.ButtonH\x01\x42\x07\n\x05iconsB\t\n\x07\x63ontrol\x1ah\n\x05Image\x12\x11\n\timage_url\x18\x01 \x01(\t\x12\x36\n\x08on_click\x18\x02 \x01(\x0b\x32$.google.chat.v1.WidgetMarkup.OnClick\x12\x14\n\x0c\x61spect_ratio\x18\x03 \x01(\x01\x1a\xa3\x01\n\x0bImageButton\x12\x31\n\x04icon\x18\x01 \x01(\x0e\x32!.google.chat.v1.WidgetMarkup.IconH\x00\x12\x12\n\x08icon_url\x18\x03 \x01(\tH\x00\x12\x36\n\x08on_click\x18\x02 \x01(\x0b\x32$.google.chat.v1.WidgetMarkup.OnClick\x12\x0c\n\x04name\x18\x04 \x01(\tB\x07\n\x05icons\x1a\x88\x01\n\x07OnClick\x12\x39\n\x06\x61\x63tion\x18\x01 \x01(\x0b\x32\'.google.chat.v1.WidgetMarkup.FormActionH\x00\x12:\n\topen_link\x18\x02 \x01(\x0b\x32%.google.chat.v1.WidgetMarkup.OpenLinkH\x00\x42\x06\n\x04\x64\x61ta\x1a\x17\n\x08OpenLink\x12\x0b\n\x03url\x18\x01 \x01(\t\x1a\xa4\x01\n\nFormAction\x12\x1a\n\x12\x61\x63tion_method_name\x18\x01 \x01(\t\x12K\n\nparameters\x18\x02 \x03(\x0b\x32\x37.google.chat.v1.WidgetMarkup.FormAction.ActionParameter\x1a-\n\x0f\x41\x63tionParameter\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t\"\xe0\x03\n\x04Icon\x12\x14\n\x10ICON_UNSPECIFIED\x10\x00\x12\x0c\n\x08\x41IRPLANE\x10\x01\x12\x0c\n\x08\x42OOKMARK\x10\x1a\x12\x07\n\x03\x42US\x10\x19\x12\x07\n\x03\x43\x41R\x10\t\x12\t\n\x05\x43LOCK\x10\x02\x12\x1c\n\x18\x43ONFIRMATION_NUMBER_ICON\x10\x0c\x12\n\n\x06\x44OLLAR\x10\x0e\x12\x0f\n\x0b\x44\x45SCRIPTION\x10\x1b\x12\t\n\x05\x45MAIL\x10\n\x12\x13\n\x0f\x45VENT_PERFORMER\x10\x14\x12\x0e\n\nEVENT_SEAT\x10\x15\x12\x12\n\x0e\x46LIGHT_ARRIVAL\x10\x10\x12\x14\n\x10\x46LIGHT_DEPARTURE\x10\x0f\x12\t\n\x05HOTEL\x10\x06\x12\x13\n\x0fHOTEL_ROOM_TYPE\x10\x11\x12\n\n\x06INVITE\x10\x13\x12\x0b\n\x07MAP_PIN\x10\x03\x12\x0e\n\nMEMBERSHIP\x10\x18\x12\x13\n\x0fMULTIPLE_PEOPLE\x10\x12\x12\t\n\x05OFFER\x10\x1e\x12\n\n\x06PERSON\x10\x0b\x12\t\n\x05PHONE\x10\r\x12\x13\n\x0fRESTAURANT_ICON\x10\x07\x12\x11\n\rSHOPPING_CART\x10\x08\x12\x08\n\x04STAR\x10\x05\x12\t\n\x05STORE\x10\x16\x12\n\n\x06TICKET\x10\x04\x12\t\n\x05TRAIN\x10\x17\x12\x10\n\x0cVIDEO_CAMERA\x10\x1c\x12\x0e\n\nVIDEO_PLAY\x10\x1d\x42\x06\n\x04\x64\x61taB\x97\x01\n\x12\x63om.google.chat.v1B\x0cWidgetsProtoP\x01Z,cloud.google.com/go/chat/apiv1/chatpb;chatpb\xaa\x02\x13Google.Apps.Chat.V1\xca\x02\x13Google\\Apps\\Chat\\V1\xea\x02\x16Google::Apps::Chat::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
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
  module Apps
    module Chat
      module V1
        WidgetMarkup = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup").msgclass
        WidgetMarkup::TextParagraph = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.TextParagraph").msgclass
        WidgetMarkup::Button = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.Button").msgclass
        WidgetMarkup::TextButton = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.TextButton").msgclass
        WidgetMarkup::KeyValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.KeyValue").msgclass
        WidgetMarkup::Image = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.Image").msgclass
        WidgetMarkup::ImageButton = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.ImageButton").msgclass
        WidgetMarkup::OnClick = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.OnClick").msgclass
        WidgetMarkup::OpenLink = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.OpenLink").msgclass
        WidgetMarkup::FormAction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.FormAction").msgclass
        WidgetMarkup::FormAction::ActionParameter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.FormAction.ActionParameter").msgclass
        WidgetMarkup::Icon = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.chat.v1.WidgetMarkup.Icon").enummodule
      end
    end
  end
end
