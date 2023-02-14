import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/constants.dart';

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
