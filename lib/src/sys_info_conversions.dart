import 'device_info.dart';

class SysInfoConversions {
  static DeviceInfo convertMapToDeviceInfo(Map<String, dynamic> data) {
    return DeviceInfo(
      name: data['name'] as String?,
      systemName: data['systemName'] as String,
      systemVersion: data['systemVersion'] as String,
      model: data['model'] as String,
      identifier: data['identifier'] as String?,
      totalDiskSpaceBytes: data['totalDiskSpaceBytes'] as int,
      freeDiskSpaceBytes: data['freeDiskSpaceBytes'] as int,
    );
  }
}
