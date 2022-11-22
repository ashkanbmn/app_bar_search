import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'app_bar_search_platform_interface.dart';

/// An implementation of [AppBarSearchPlatform] that uses method channels.
class MethodChannelAppBarSearch extends AppBarSearchPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('app_bar_search');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
