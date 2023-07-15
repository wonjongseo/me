import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:wonjongseo/constants.dart';

class Contacts extends StatelessWidget {
  const Contacts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              "assets/icons/icons8-instagram.svg",
              width: 30,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: defaultPadding / 3),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://www.facebook.com/visionwill'),
              );
              //
            },
            icon: SvgPicture.asset(
              "assets/icons/icons8-facebook.svg",
              color: Colors.grey,
              width: 30,
            ),
          ),
          const SizedBox(width: defaultPadding / 3),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse(
                    'https://woolly-clownfish-678.notion.site/Web-Developer-431e3c2297054ffda0f704f3fee5b8c9'),
              );
            },
            icon: SvgPicture.asset(
              "assets/icons/icons8-notion.svg",
              color: Colors.grey,
              width: 30,
            ),
          ),
          const SizedBox(width: defaultPadding / 3),
          IconButton(
            onPressed: () {
              launchUrl(
                Uri.parse('https://github.com/wonjongseo'),
              );
            },
            icon: SvgPicture.asset(
              "assets/icons/icons8-github.svg",
              color: Colors.grey,
              width: 30,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
