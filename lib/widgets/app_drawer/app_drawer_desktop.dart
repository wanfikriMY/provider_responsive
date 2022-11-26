import 'package:flutter/material.dart';
import 'package:provider_responsive/widgets/app_drawer/app_drawer.dart';

class AppDrawerDesktopPortrait extends StatelessWidget {
  const AppDrawerDesktopPortrait({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          blurRadius: 16,
          color: Colors.black12,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: AppDrawer.getDrawerOptions(),
      ),
    );
  }
}
