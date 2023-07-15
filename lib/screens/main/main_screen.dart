import 'package:flutter/material.dart';
import 'package:wonjongseo/components/menu/side_menu.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/utils/language_switch_card.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key, required this.body, this.isHome});
  bool? isHome;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    print('isHome: ${isHome}');
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              actions: [LanaguesSwitchCard()],
              backgroundColor: bgColor,
              elevation: isHome == true ? 1 : 0,
              leading: isHome != null
                  ? Builder(
                      builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu),
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios_rounded)),
            )
          : null,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
                const SizedBox(width: defaultPadding),
                Expanded(flex: 7, child: body),
                const SizedBox(width: defaultPadding)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
