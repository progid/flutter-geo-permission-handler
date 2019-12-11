#import "GeolocationPermissionsPlugin.h"
#if __has_include(<geolocation_permissions/geolocation_permissions-Swift.h>)
#import <geolocation_permissions/geolocation_permissions-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "geolocation_permissions-Swift.h"
#endif

@implementation GeolocationPermissionsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGeolocationPermissionsPlugin registerWithRegistrar:registrar];
}
@end
