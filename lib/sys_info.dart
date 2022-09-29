
import 'package:sys_info/src/device_info.dart';

import 'sys_info_platform_interface.dart';
export 'src/device_info.dart';

class SysInfo {
  SysInfo._();
  static Future<String?> getPlatformVersion() {
    return SysInfoPlatform.instance.getPlatformVersion();
  }

  static Future<DeviceInfo?> getDeviceInfo() {
    return SysInfoPlatform.instance.getDeviceInfo();
  }
}
