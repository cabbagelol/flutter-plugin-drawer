#import "FlutterPluginDrawerPlugin.h"
#import <flutter_plugin_drawer/flutter_plugin_drawer-Swift.h>

@implementation FlutterPluginDrawerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterPluginDrawerPlugin registerWithRegistrar:registrar];
}
@end
