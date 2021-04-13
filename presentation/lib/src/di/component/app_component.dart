import 'package:core/core.dart';
import 'package:jugger/jugger.dart' as j;
import 'package:presentation/src/di/module/app_module.dart';
import 'package:presentation/src/di/module/td_module.dart';
import 'package:presentation/src/navigation/navigation.dart';
import 'package:presentation/src/util/util.dart';
import 'package:td_client/td_client.dart';

@j.Component(modules: <Type>[
  AppModule,
  TdModule,
])
abstract class AppComponent {
  TdClient getTdClient();

  IChatRepository getChatRepository();

  ISessionRepository getSessionRepository();

  IFileRepository getIFileRepository();

  IChatMessageRepository getChatMessageRepository();

  INavigationRouter getNavigationRouter();

  IStringsProvider getStringsProvider();

  DateFormatter getDateFormatter();

  DateParser getDateParser();

  IChatUpdatesProvider getChatUpdatesProvider();
}

@j.componentBuilder
abstract class AppComponentBuilder {
  AppComponent build();
}
