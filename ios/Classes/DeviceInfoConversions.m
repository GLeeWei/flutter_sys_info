//
//  DeviceInfoConversions.m
//  super_device_info
//
//  Created by LeeWei on 2022/9/14.
//

#import "DeviceInfoConversions.h"
#import "UIDevice+DiskSpace.h"

@implementation DeviceInfoConversions

+(NSDictionary*) convertDeviceInfoToMap:(UIDevice*) device
{
    return @{
        @"name": [device name],
        @"systemName": [device systemName],
        @"systemVersion": [device systemVersion],
        @"model": [device model],
        @"localizedModel": [device localizedModel],
        @"identifier": [[device identifierForVendor] UUIDString] ?: [NSNull null],
        @"totalDiskSpaceBytes": @([device totalDiskSpaceBytes]),
        @"freeDiskSpaceBytes": @([device freeDiskSpaceBytes]),
    };
}

@end
