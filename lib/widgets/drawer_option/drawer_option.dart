import 'package:flutter/material.dart';
import 'package:provider_responsive/responsive/orientation_layout.dart';
import 'package:provider_responsive/responsive/screen_type_layout.dart';
import 'package:provider_responsive/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:provider_responsive/widgets/drawer_option/drawer_option_desktop.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;

  const DrawerOption({
    super.key,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: DrawerOptionMobilePortrait(
          title: title,
          iconData: iconData,
        ),
      ),
      desktop: OrientationLayout(
        portrait: DrawerOptionTabletPortrait(
          title: title,
          iconData: iconData,
        ),
      ),
    );
  }
}
