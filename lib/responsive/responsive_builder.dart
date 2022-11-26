import 'package:flutter/material.dart';
import 'package:provider_responsive/responsive/sizing_information.dart';
import 'package:provider_responsive/utils/ui_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;

  const ResponsiveBuilder({
    super.key,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints) {
      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceScreenType: getDeviceScreenType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(
          boxConstraints.maxWidth,
          boxConstraints.maxHeight,
        ),
      );

      return builder(context, sizingInformation);
    });
  }
}
