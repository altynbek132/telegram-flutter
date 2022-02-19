import 'dart:async';

import 'package:core_tdlib_api/core_tdlib_api.dart';
import 'package:tdlib/td_api.dart' as td;

class ChatFilterRepositoryImpl implements IChatFilterRepository {
  ChatFilterRepositoryImpl({
    required IChatFiltersUpdatesProvider chatFiltersUpdatesProvider,
  }) : _chatFiltersUpdatesProvider = chatFiltersUpdatesProvider {
    _init();
  }

  final IChatFiltersUpdatesProvider _chatFiltersUpdatesProvider;

  List<td.ChatFilterInfo> _chatFilters = <td.ChatFilterInfo>[];

  StreamSubscription<td.UpdateChatFilters>? _chatFiltersUpdatesSubscription;

  void _init() {
    _chatFiltersUpdatesSubscription = _chatFiltersUpdatesProvider
        .chatFiltersUpdates
        .listen((td.UpdateChatFilters event) {
      _chatFilters = event.chatFilters;
    });
  }

  @override
  List<td.ChatFilterInfo> get chatFilters => _chatFilters;

  void dispose() {
    _chatFiltersUpdatesSubscription?.cancel();
  }
}
