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
    print(locale);
    return Row(
      children: [
        // if (locale != 'ko-US' && locale != 'ko-KR')
        if (!locale.contains('ko'))
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('ko', 'KR'));
              },
              child: const Text(
                'KR',
                style: TextStyle(color: primaryColor),
              )),
        // if (locale != 'en-US')
        if (!locale.contains('en'))
          TextButton(
              onPressed: () {
                Get.updateLocale(const Locale('en', 'US'));
              },
              child: const Text(
                'EN',
                style: TextStyle(color: primaryColor),
              )),
        if (!locale.contains('ja'))
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
