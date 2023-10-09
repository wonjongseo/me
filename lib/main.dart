import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/screens/home/home_screen.dart';
import 'package:wonjongseo/screens/project_detail/project_detail_screen.dart';
import 'package:wonjongseo/screens/report/report_screen.dart';
import 'package:wonjongseo/screens/splash/splash_screen.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: GetPlatform.isDesktop
          ? const MaterialScrollBehavior()
              .copyWith(dragDevices: {PointerDeviceKind.mouse})
          : null,
      translations: Languagues(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'My name is Wonjongseo',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: Theme.of(context)
            .copyWith()
            .textTheme
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyLarge: const TextStyle(color: bodyTextColor),
              bodyMedium: const TextStyle(color: bodyTextColor),
            ),
      ),
      initialRoute: SPLASH_PATH,
      getPages: [
        GetPage(name: SPLASH_PATH, page: () => const SplashScreen()),
        GetPage(
            name: REPORT_PATH,
            page: () => ReportSceen(corporation: corporation_projects[0])),
        GetPage(
          name: HOME_PATH,
          page: () => const HomeScreen(),
        ),
        GetPage(
          name: PROJECT_DETAIL_PATH,
          page: () => const ProjectDetailScrenn(),
        ),
      ],
    );
  }
}
