import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:sys_info/src/device_info.dart';

import 'sys_info_method_channel.dart';

abstract class SysInfoPlatform extends PlatformInterface {
  /// Constructs a SysInfoPlatform.
  SysInfoPlatform() : super(token: _token);

  static final Object _token = Object();

  static SysInfoPlatform _instance = MethodChannelSysInfo();

  /// The default instance of [SysInfoPlatform] to use.
  ///
  /// Defaults to [MethodChannelSysInfo].
  static SysInfoPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SysInfoPlatform] when
  /// they register themselves.
  static set instance(SysInfoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<DeviceInfo?> getDeviceInfo() {
    throw UnimplementedError('getDeviceInfo() has not been implemented.');
  }
}
