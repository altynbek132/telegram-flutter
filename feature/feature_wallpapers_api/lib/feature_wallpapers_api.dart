library feature_wallpapers_api;

import 'package:flutter/widgets.dart';

abstract class IWallpapersFeatureApi {
  IWallpapersListScreenFactory get wallpapersListScreenFactory;
}

abstract class IWallpapersListScreenFactory {
  Widget create();
}
