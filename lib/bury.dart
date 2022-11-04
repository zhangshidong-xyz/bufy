
import 'bury_platform_interface.dart';

class Bury {
  Future<String?> getPlatformVersion() {
    return BuryPlatform.instance.getPlatformVersion();
  }
}
