import 'dart:async';

import 'package:core_tdlib_api/core_tdlib_api.dart';
import 'package:tdlib/td_api.dart' as td;

class FakeFileRepository implements IFileRepository {
  @override
  Future<td.LocalFile> getLocalFile(int id) {
    final Completer<td.LocalFile> completer = Completer<td.LocalFile>();
    return completer.future;
  }

  @override
  String? getPathOrNull(int id) => null;
}