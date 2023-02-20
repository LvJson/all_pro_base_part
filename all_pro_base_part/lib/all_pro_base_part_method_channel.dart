import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'all_pro_base_part_platform_interface.dart';

/// An implementation of [AllProBasePartPlatform] that uses method channels.
class MethodChannelAllProBasePart extends AllProBasePartPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('all_pro_base_part');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
