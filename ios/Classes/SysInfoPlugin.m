#import "SysInfoPlugin.h"
#import "DeviceInfoConversions.h"

@implementation SysInfoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"sys_info"
            binaryMessenger:[registrar messenger]];
  SysInfoPlugin* instance = [[SysInfoPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else if ([@"getDeviceInfo" isEqualToString:call.method]) {
      UIDevice *device = [UIDevice currentDevice];
      result([DeviceInfoConversions convertDeviceInfoToMap:device]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
