import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'bury_platform_interface.dart';

/// An implementation of [BuryPlatform] that uses method channels.
class MethodChannelBury extends BuryPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('bury');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
