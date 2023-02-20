import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'all_pro_base_part_method_channel.dart';

abstract class AllProBasePartPlatform extends PlatformInterface {
  /// Constructs a AllProBasePartPlatform.
  AllProBasePartPlatform() : super(token: _token);

  static final Object _token = Object();

  static AllProBasePartPlatform _instance = MethodChannelAllProBasePart();

  /// The default instance of [AllProBasePartPlatform] to use.
  ///
  /// Defaults to [MethodChannelAllProBasePart].
  static AllProBasePartPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AllProBasePartPlatform] when
  /// they register themselves.
  static set instance(AllProBasePartPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
