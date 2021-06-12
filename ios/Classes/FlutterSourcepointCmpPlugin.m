#import "FlutterSourcepointCmpPlugin.h"
#if __has_include(<flutter_sourcepoint_cmp/flutter_sourcepoint_cmp-Swift.h>)
#import <flutter_sourcepoint_cmp/flutter_sourcepoint_cmp-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_sourcepoint_cmp-Swift.h"
#endif

@implementation FlutterSourcepointCmpPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterSourcepointCmpPlugin registerWithRegistrar:registrar];
}
@end
