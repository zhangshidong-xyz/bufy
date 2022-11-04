import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'bury_method_channel.dart';

abstract class BuryPlatform extends PlatformInterface {
  /// Constructs a BuryPlatform.
  BuryPlatform() : super(token: _token);

  static final Object _token = Object();

  static BuryPlatform _instance = MethodChannelBury();

  /// The default instance of [BuryPlatform] to use.
  ///
  /// Defaults to [MethodChannelBury].
  static BuryPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BuryPlatform] when
  /// they register themselves.
  static set instance(BuryPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
