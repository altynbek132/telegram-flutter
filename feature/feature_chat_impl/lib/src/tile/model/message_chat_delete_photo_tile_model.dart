import 'package:flutter/rendering.dart';

import 'base_message_tile_model.dart';

class MessageChatDeletePhotoTileModel extends BaseMessageTileModel {
  const MessageChatDeletePhotoTileModel({
    required int id,
    required bool isOutgoing,
    required this.title,
  }) : super(isOutgoing: isOutgoing, id: id);

  final InlineSpan title;
}