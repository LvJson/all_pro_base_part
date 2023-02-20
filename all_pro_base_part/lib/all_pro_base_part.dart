
import 'all_pro_base_part_platform_interface.dart';

class AllProBasePart {
  Future<String?> getPlatformVersion() {
    return AllProBasePartPlatform.instance.getPlatformVersion();
  }
}
