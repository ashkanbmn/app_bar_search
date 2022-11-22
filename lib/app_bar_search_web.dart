// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'app_bar_search_platform_interface.dart';

/// A web implementation of the AppBarSearchPlatform of the AppBarSearch plugin.
class AppBarSearchWeb extends AppBarSearchPlatform {
  /// Constructs a AppBarSearchWeb
  AppBarSearchWeb();

  static void registerWith(Registrar registrar) {
    AppBarSearchPlatform.instance = AppBarSearchWeb();
  }

  /// Returns a [String] containing the version of the platform.
  @override
  Future<String?> getPlatformVersion() async {
    final version = html.window.navigator.userAgent;
    return version;
  }
}
