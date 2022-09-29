//
//  UIDevice+DiskSpace.m
//  super_device_info
//
//  Created by LeeWei on 2022/9/14.
//

#import "UIDevice+DiskSpace.h"

@implementation UIDevice (DiskSpace)

- (NSString *)totalDiskSpaceInGB
{
    return [NSByteCountFormatter stringFromByteCount:self.totalDiskSpaceBytes countStyle:NSByteCountFormatterCountStyleDecimal];
}

- (NSString *)freeDiskSpaceInGB
{
    return [NSByteCountFormatter stringFromByteCount:self.freeDiskSpaceBytes countStyle:NSByteCountFormatterCountStyleDecimal];
}

- (long) totalDiskSpaceBytes
{
    NSError * error = nil;
    NSDictionary<NSFileAttributeKey, id> * systemAttributes =  [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:&error];
    if (error) {
        return 0;
    }
    long long space = [systemAttributes[NSFileSystemSize] longLongValue];
    return space;
}

- (long) freeDiskSpaceBytes
{
    if (@available(iOS 11.0, *)) {
        [NSURL alloc];
        NSURL * url = [[NSURL alloc]initFileURLWithPath:[NSString stringWithFormat:@"%@",NSHomeDirectory()]];
        NSError * error = nil;
        NSDictionary<NSURLResourceKey, id> * dict = [url resourceValuesForKeys:@[NSURLVolumeAvailableCapacityForImportantUsageKey] error:&error];
        if (error) {
            return 0;
        }
        long long space = [dict[NSURLVolumeAvailableCapacityForImportantUsageKey] longLongValue];
        return space;
    } else {
        NSError * error = nil;
        NSDictionary<NSFileAttributeKey, id> * systemAttributes =  [[NSFileManager defaultManager] attributesOfFileSystemForPath:NSHomeDirectory() error:&error];
        if (error) {
            return 0;
        }
        long long space = [systemAttributes[NSFileSystemFreeSize] longLongValue];
        return space;
    }
}

@end
