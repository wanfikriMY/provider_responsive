import 'package:flutter/material.dart';
import 'package:provider_responsive/enums/device_screen_type.dart';
import 'package:provider_responsive/responsive/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ScreenTypeLayout({
    super.key,
    this.mobile,
    this.tablet,
    this.desktop,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.tablet:
            return tablet ?? Container();

          case DeviceScreenType.desktop:
            return desktop ?? Container();

          default:
            return mobile ?? Container();
        }
      },
    );
  }
}
