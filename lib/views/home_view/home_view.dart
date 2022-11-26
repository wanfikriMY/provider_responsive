import 'package:flutter/material.dart';
import 'package:provider_responsive/responsive/orientation_layout.dart';
import 'package:provider_responsive/responsive/screen_type_layout.dart';
import 'package:provider_responsive/views/home_view/home_mobile_landscape.dart';
import 'package:provider_responsive/views/home_view/home_mobile_portrait.dart';
import 'package:provider_responsive/views/home_view/home_view_tablet.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}
