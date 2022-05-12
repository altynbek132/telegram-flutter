import 'package:feature_create_new_chat_impl/feature_create_new_chat_impl.dart';
import 'package:feature_create_new_chat_impl/src/screen/new_chat/new_chat.dart';
import 'package:jugger/jugger.dart' as j;
import 'package:localization_api/localization_api.dart';

import 'create_new_chat_component.dart';

@j.Component(
  dependencies: <Type>[ICreateNewChatComponent],
  modules: <Type>[CreateNewChatScreenModule],
)
abstract class ICreateNewChatScreenComponent {
  NewChatViewModel getNewChatViewModel();

  IStringsProvider getStringsProvider();
}

@j.module
abstract class CreateNewChatScreenModule {
  @j.singleton
  @j.provides
  static NewChatViewModel provideNewChatViewModel(
    INewChatScreenRouter router,
  ) =>
      NewChatViewModel(
        router: router,
      )..init();

  @j.singleton
  @j.binds
  INewChatScreenRouter bindINewChatScreenRouter(ICreateNewChatRouter impl);
}

@j.componentBuilder
abstract class CreateNewChatScreenComponentBuilder {
  CreateNewChatScreenComponentBuilder createNewChatComponent(
    ICreateNewChatComponent component,
  );

  ICreateNewChatScreenComponent build();
}
