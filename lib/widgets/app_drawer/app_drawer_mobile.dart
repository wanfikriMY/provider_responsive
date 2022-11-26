import 'package:flutter/material.dart';
import 'package:provider_responsive/widgets/app_drawer/app_drawer.dart';

class AppDrawerMobile extends StatelessWidget {
  const AppDrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Container(
      width: orientation == Orientation.portrait ? 250 : 100,
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
