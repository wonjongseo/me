import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/learn.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:get/get.dart';

import 'package:wonjongseo/screens/project_detail/project_detail_screen.dart';

class LearningCard extends StatelessWidget {
  const LearningCard({super.key, required this.learn});

  final Learn learn;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: const BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(learn.name!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: sectionTitleStyle(context)),
            SizedBox(
                height:
                    defaultPadding / (Responsive.isDesktop(context) ? 1 : 2)),
            Expanded(
              child: Text(
                learn.description!,
                style: const TextStyle(height: 1.5),
              ),
            ),
            if (Responsive.isDesktop(context))
              const SizedBox(height: defaultPadding),
            TextButton(
                onPressed: () {
                  Get.toNamed(PROJECT_DETAIL_PATH,
                      parameters: {'id': learn.index});
                },
                child: const Text(
                  'Read More >>',
                  style: TextStyle(color: primaryColor),
                ))
          ],
        ));
  }
}
