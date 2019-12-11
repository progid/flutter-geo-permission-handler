import 'dart:async';

import 'package:flutter/services.dart';

class GeolocationPermissions {
  static const MethodChannel _channel =
      const MethodChannel('geolocation_permissions');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
