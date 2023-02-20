import 'package:flutter_test/flutter_test.dart';
import 'package:all_pro_base_part/all_pro_base_part.dart';
import 'package:all_pro_base_part/all_pro_base_part_platform_interface.dart';
import 'package:all_pro_base_part/all_pro_base_part_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAllProBasePartPlatform 
    with MockPlatformInterfaceMixin
    implements AllProBasePartPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AllProBasePartPlatform initialPlatform = AllProBasePartPlatform.instance;

  test('$MethodChannelAllProBasePart is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAllProBasePart>());
  });

  test('getPlatformVersion', () async {
    AllProBasePart allProBasePartPlugin = AllProBasePart();
    MockAllProBasePartPlatform fakePlatform = MockAllProBasePartPlatform();
    AllProBasePartPlatform.instance = fakePlatform;
  
    expect(await allProBasePartPlugin.getPlatformVersion(), '42');
  });
}
