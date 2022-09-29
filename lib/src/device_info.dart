class DeviceInfo {
  final String? name;
  final String systemName;
  final String systemVersion;
  final String model;
  final String? identifier;
  final int totalDiskSpaceBytes;
  final int freeDiskSpaceBytes;

  DeviceInfo(
      {required this.name,
      required this.systemName,
      required this.systemVersion,
      required this.model,
      this.identifier,
      required this.totalDiskSpaceBytes,
      required this.freeDiskSpaceBytes});

  @override
  String toString() {
    return '{ name: $name, systemName: $systemName, systemVersion: $systemVersion, '
        'model: $model,  identifier: $identifier,'
        'totalDiskSpaceBytes: $totalDiskSpaceBytes, freeDiskSpaceBytes: $freeDiskSpaceBytes,';
  }
}
