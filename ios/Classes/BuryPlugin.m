#import "BuryPlugin.h"
#if __has_include(<bury/bury-Swift.h>)
#import <bury/bury-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "bury-Swift.h"
#endif

@implementation BuryPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBuryPlugin registerWithRegistrar:registrar];
}
@end
