import 'package:flutter/material.dart';

import 'package:provider_responsive/widgets/app_drawer/app_drawer.dart';

class AppDrawerTabletLandscape extends StatelessWidget {
  const AppDrawerTabletLandscape({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Column(
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}
