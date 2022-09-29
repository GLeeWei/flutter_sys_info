//
//  UIDevice+DiskSpace.h
//  super_device_info
//
//  Created by LeeWei on 2022/9/14.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIDevice (DiskSpace)

/**
 * @abstract 获取设备磁盘总容量
 * @return 单位GB
 */
- (NSString *)totalDiskSpaceInGB;
/**
 * @abstract 获取设备磁盘空余容量
 * @return 单位GB
 */
- (NSString *)freeDiskSpaceInGB;
/**
 * @abstract 获取设备磁盘已使用量
 * @return 单位GB
 */

/**
 * @abstract 获取设备磁盘总容量
 * @return 单位B
 */
- (long) totalDiskSpaceBytes;
/**
 * @abstract 获取设备磁盘已使用量
 * @return 单位B
 */
- (long) freeDiskSpaceBytes;


@end

NS_ASSUME_NONNULL_END
