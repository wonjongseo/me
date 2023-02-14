import 'package:flutter/material.dart';
import 'package:wonjongseo/components/menu/side_menu.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key, required this.body, this.isHome});
  bool? isHome;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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

class LanaguesSwitchCard extends StatelessWidget {
  const LanaguesSwitchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String locale = Get.locale!.toLanguageTag();

    return Row(
      children: [
        if (locale != 'ko-KR')
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('ko', 'KR'));
              },
              child: const Text(
                'KR',
                style: TextStyle(color: primaryColor),
              )),
        if (locale != 'en-US')
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('en', 'US'));
              },
              child: const Text(
                'EN',
                style: TextStyle(color: primaryColor),
              )),
        if (locale != 'ja' && locale != 'ja-JP')
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('ja', 'JP'));
              },
              child: const Text(
                'JP',
                style: TextStyle(color: primaryColor),
              ))
      ],
    );
  }
}
