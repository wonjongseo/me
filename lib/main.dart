import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wonjongseo/screens/home/home_screen.dart';
import 'package:wonjongseo/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My name is Wonjongseo',
        theme: ThemeData.dark().copyWith(
            primaryColor: primaryColor,
            scaffoldBackgroundColor: bgColor,
            canvasColor: bgColor,
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                .apply(bodyColor: Colors.white)
                .copyWith(
                  bodyText1: TextStyle(color: bodyTextColor),
                  bodyText2: TextStyle(color: bodyTextColor),
                )),
        initialRoute: HOME_PATH,
        getPages: [
          GetPage(name: SPLASH_PATH, page: () => const SplashScreen()),
          GetPage(name: HOME_PATH, page: () => const HomeScreen()),
        ]);
  }
}
