import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/screens/home/home_screen.dart';

const String SPLASH_PATH = '/splash';

void goTo() => Get.toNamed(HOME_PATH);

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to My Friends',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(height: defaultPadding),
            TweenAnimationBuilder(
              curve: Curves.fastOutSlowIn,
              tween: Tween<double>(begin: 0, end: 1),
              duration: defaultDuration,
              onEnd: goTo,
              builder: (context, value, child) {
                return Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: LinearProgressIndicator(
                        backgroundColor: darkColor,
                        value: value,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Text('${(value * 100).toInt()}%')
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
