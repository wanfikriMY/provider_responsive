import 'package:flutter/material.dart';
import 'package:provider_responsive/responsive/orientation_layout.dart';
import 'package:provider_responsive/responsive/screen_type_layout.dart';
import 'package:provider_responsive/widgets/app_drawer/app_drawer_mobile.dart';
import 'package:provider_responsive/widgets/app_drawer/app_drawer_tablet_landscape.dart';
import 'package:provider_responsive/widgets/app_drawer/app_drawer_tablet_portrait.dart';
import 'package:provider_responsive/widgets/drawer_option/drawer_option.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenTypeLayout(
      mobile: AppDrawerMobile(),
      tablet: OrientationLayout(
        portrait: AppDrawerTabletPortrait(),
        landscape: AppDrawerTabletLandscape(),
      ),
    );
  }

  static List<Widget> getDrawerOptions() {
    return [
      const DrawerOption(title: "Images", iconData: Icons.image),
      const DrawerOption(title: "Reports", iconData: Icons.photo_filter),
      const DrawerOption(title: "Incidents", iconData: Icons.message),
      const DrawerOption(title: "Settings", iconData: Icons.settings),
    ];
  }
}
