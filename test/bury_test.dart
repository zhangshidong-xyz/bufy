import 'package:flutter_test/flutter_test.dart';
import 'package:bury/bury.dart';
import 'package:bury/bury_platform_interface.dart';
import 'package:bury/bury_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBuryPlatform
    with MockPlatformInterfaceMixin
    implements BuryPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BuryPlatform initialPlatform = BuryPlatform.instance;

  test('$MethodChannelBury is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBury>());
  });

  test('getPlatformVersion', () async {
    Bury buryPlugin = Bury();
    MockBuryPlatform fakePlatform = MockBuryPlatform();
    BuryPlatform.instance = fakePlatform;

    expect(await buryPlugin.getPlatformVersion(), '42');
  });
}
