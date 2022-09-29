//
//  DeviceInfoConversions.h
//  super_device_info
//
//  Created by LeeWei on 2022/9/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DeviceInfoConversions : NSObject

+(NSDictionary*) convertDeviceInfoToMap:(UIDevice*) device;

@end

NS_ASSUME_NONNULL_END
