import 'package:core_arch/core_arch.dart';
import 'package:coreui/coreui.dart';
import 'package:feature_settings_search_impl/feature_settings_search_impl.dart';
import 'package:feature_settings_search_impl/src/tile/model/faq_result_tile_model.dart';
import 'package:feature_settings_search_impl/src/tile/model/search_result_tile_model.dart';
import 'package:jugger/jugger.dart' as j;
import 'package:feature_settings_search_impl/src/settings_search_screen_router.dart';
import 'package:rxdart/rxdart.dart';

class SettingsSearchViewModel extends BaseViewModel {
  @j.inject
  SettingsSearchViewModel({required ISettingsSearchScreenRouter router})
      : _router = router {
    _suggests.add(<ITileModel>[
      // TODO: implement all https://github.com/DrKLO/Telegram/blob/master/TMessagesProj/src/main/java/org/telegram/ui/ProfileActivity.java#L7701
      SearchResultTileModel(
          type: SearchResultType.NotificationsAndSounds,
          title: 'Notifications and Sounds',
          subtitle: null),
      // TODO: parse faq https://github.com/DrKLO/Telegram/blob/master/TMessagesProj/src/main/java/org/telegram/ui/ProfileActivity.java#L7342
      FaqResultTileModel(
          title: 'FAQ > General',
          subtitle: 'What is Telegram?',
          url: 'https://telegram.org/faq')
    ]);
  }

  final ISettingsSearchScreenRouter _router;

  final BehaviorSubject<List<ITileModel>> _suggests =
      BehaviorSubject<List<ITileModel>>();

  Stream<List<ITileModel>> get suggests => _suggests;

  void onFaqResultTap(String url) {}

  void onSearchResultTap(SearchResultType type) {}
}
