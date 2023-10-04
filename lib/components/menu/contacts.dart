import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double iconSize = 30;
    double iconMargin =
        Responsive.isMobile(context) || Responsive.isMobileLarge(context)
            ? defaultPadding / 4
            : defaultPadding / 3;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              launchUrl(
                Uri.parse('https://www.instagram.com/jxngseo/'),
              );
            },
            icon: SvgPicture.asset(
              width: iconSize,
              "assets/icons/icons8-instagram.svg",
              color: Colors.grey,
            ),
          ),
          SizedBox(width: iconMargin),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://www.facebook.com/visionwill'),
              );
              //
            },
            icon: SvgPicture.asset(
              width: iconSize,
              "assets/icons/icons8-facebook.svg",
              color: Colors.grey,
            ),
          ),
          SizedBox(width: iconMargin),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://woolly-clownfish-678.notion.site/Web-Developer-431e3c2297054ffda0f704f3fee5b8c9'),
              );
            },
            icon: SvgPicture.asset(
              width: iconSize,
              "assets/icons/icons8-notion.svg",
              color: Colors.grey,
            ),
          ),
          SizedBox(width: iconMargin),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/wonjongseo'),
              );
            },
            icon: SvgPicture.asset(
              width: iconSize,
              "assets/icons/icons8-github.svg",
              color: Colors.grey,
            ),
          ),
          SizedBox(width: iconMargin),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://www.youtube.com/@jongseokun'),
              );
            },
            icon: SvgPicture.asset(
              width: iconSize,
              "assets/icons/icons8-youtube.svg",
              color: Colors.grey,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
