import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:sys_info/src/device_info.dart';
import 'package:sys_info/src/sys_info_conversions.dart';

import 'sys_info_platform_interface.dart';

/// An implementation of [SysInfoPlatform] that uses method channels.
class MethodChannelSysInfo extends SysInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sys_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<DeviceInfo?> getDeviceInfo() async {
    Map<dynamic, dynamic>? deviceInfoData;
    try {
      deviceInfoData = await methodChannel.invokeMethod<Map>('getDeviceInfo');
    } on PlatformException {
      rethrow;
    }
    return null != deviceInfoData
        ? SysInfoConversions.convertMapToDeviceInfo(deviceInfoData.cast<String, dynamic>())
        : null;
  }
}
