import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'app_bar_search_method_channel.dart';

abstract class AppBarSearchPlatform extends PlatformInterface {
  /// Constructs a AppBarSearchPlatform.
  AppBarSearchPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppBarSearchPlatform _instance = MethodChannelAppBarSearch();

  /// The default instance of [AppBarSearchPlatform] to use.
  ///
  /// Defaults to [MethodChannelAppBarSearch].
  static AppBarSearchPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppBarSearchPlatform] when
  /// they register themselves.
  static set instance(AppBarSearchPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
