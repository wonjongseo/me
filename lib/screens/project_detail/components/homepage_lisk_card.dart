import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageLinkCard extends StatelessWidget {
  const HomePageLinkCard({
    Key? key,
    required this.path,
    required this.text,
    required this.projectTitle,
  }) : super(key: key);

  final String projectTitle;
  final String path;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: sectionTitleStyle(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: defaultPadding / 4),
        Row(
          children: [
            const Text('Go to '),
            TextButton(
              onPressed: () {
                launchUrl(
                  Uri.parse(path),
                );
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                minimumSize: MaterialStateProperty.all(Size.zero),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: Text(projectTitle),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
