import 'package:flutter/cupertino.dart';
import 'package:provider_responsive/enums/device_screen_type.dart';

DeviceScreenType getDeviceScreenType(MediaQueryData mediaQuery) {
  var orientation = mediaQuery.orientation;

  /// Fixed device width (changes with orientation)
  double deviceWidth = 0;

  /// cheking orientation to replace device width value
  if (orientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if (deviceWidth > 950) {
    return DeviceScreenType.desktop;
  }

  return DeviceScreenType.mobile;
}
