import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)
                      : Theme.of(context).textTheme.headline5!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle1!,
                  maxLines: 1,
                  child: Row(
                    children: [
                      if (!Responsive.isMobileLarge(context))
                        const FlutterCodeText(endText: '<'),
                      if (!Responsive.isMobileLarge(context))
                        const SizedBox(width: defaultPadding / 2),
                      const Text('I built '),
                      Responsive.isMobile(context)
                          ? const Expanded(child: MyBuildAnimatedText())
                          : const MyBuildAnimatedText(),
                      if (!Responsive.isMobileLarge(context))
                        const SizedBox(width: defaultPadding / 2),
                      if (!Responsive.isMobileLarge(context))
                        const FlutterCodeText(endText: '</'),
                    ],
                  ),
                ),
                SizedBox(height: defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'EXPLORE NOW',
                      style: TextStyle(color: darkColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      animatedTexts: [
        TyperAnimatedText('responsive web and mobile app.',
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText('Shopping moll App.',
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText('Toeic vocabulary App.',
            speed: const Duration(milliseconds: 60)),
        TyperAnimatedText('Real Amazon App.',
            speed: const Duration(milliseconds: 60)),
      ],
    );
  }
}

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({super.key, required this.endText});
  final String endText;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: endText, children: const [
      TextSpan(text: 'won', style: TextStyle(color: primaryColor)),
      TextSpan(text: '>')
    ]));
  }
}
