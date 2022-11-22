#import "AppBarSearchPlugin.h"
#if __has_include(<app_bar_search/app_bar_search-Swift.h>)
#import <app_bar_search/app_bar_search-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "app_bar_search-Swift.h"
#endif

@implementation AppBarSearchPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAppBarSearchPlugin registerWithRegistrar:registrar];
}
@end
