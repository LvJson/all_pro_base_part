import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:all_pro_base_part/all_pro_base_part_method_channel.dart';

void main() {
  MethodChannelAllProBasePart platform = MethodChannelAllProBasePart();
  const MethodChannel channel = MethodChannel('all_pro_base_part');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
