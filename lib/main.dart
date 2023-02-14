import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/screens/home/home_screen.dart';
import 'package:wonjongseo/screens/project_detail/project_detail_screen.dart';
import 'package:wonjongseo/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        translations: Languagues(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale('en', 'US'),
        debugShowCheckedModeBanner: false,
        title: 'My name is Wonjongseo',
        theme: ThemeData.dark().copyWith(
            primaryColor: primaryColor,
            scaffoldBackgroundColor: bgColor,
            canvasColor: bgColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white)
                .copyWith(
                  bodyText1: const TextStyle(color: bodyTextColor),
                  bodyText2: const TextStyle(color: bodyTextColor),
                )),
        // initialRoute: '/test',
        initialRoute: SPLASH_PATH,
        getPages: [
          GetPage(name: '/test', page: () => const TestPage()),
          GetPage(name: SPLASH_PATH, page: () => const SplashScreen()),
          GetPage(name: HOME_PATH, page: () => const HomeScreen()),
          GetPage(
              name: PROJECT_DETAIL_PATH,
              page: () => const ProjectDetailScrenn()),
        ]);
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text('greeting'.tr),
            OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ko', 'KR'));
                },
                child: Text('KOREA')),
            OutlinedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('ko', 'KR'));
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: Text('English')),
          ],
        ),
      ),
    );
  }
}
