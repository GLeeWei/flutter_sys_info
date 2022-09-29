package com.snail.sys_info;

import java.util.HashMap;
import java.util.Map;

class DeviceInfoConversions {
    static Map<String, Object> convertDeviceInfoToMap(DeviceInfo device) {
        Map<String, Object> info = new HashMap<>();
        info.put("brand", device.brand);
        info.put("device", device.device);
        info.put("id", device.id);
        info.put("model", device.model);
        info.put("systemName", device.systemName);
        info.put("identifier", device.identifier);
        info.put("sdkInt", device.sdkInt);
        info.put("systemVersion", device.systemVersion);
        info.put("supported32BitAbis", device.supported32BitAbis);
        info.put("supported64BitAbis", device.supported64BitAbis);
        info.put("supportedAbis", device.supportedAbis);
//        info.put("systemFeatures", device.systemFeatures);
        info.put("totalDiskSpaceBytes", device.totalDiskSpaceBytes);
        info.put("freeDiskSpaceBytes", device.freeDiskSpaceBytes);
        return info;
    }
}
