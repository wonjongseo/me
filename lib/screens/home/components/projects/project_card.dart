import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/Project.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:get/get.dart';

import 'package:wonjongseo/screens/project_detail/project_detail_screen.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(project.title!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: sectionTitleStyle(context)),
            SizedBox(
                height:
                    defaultPadding / (Responsive.isDesktop(context) ? 1 : 2)),
            Expanded(
              child: Text(
                project.descriptionToLocale(project.index),
                style: const TextStyle(height: 1.5),
              ),
            ),
            if (Responsive.isDesktop(context))
              const SizedBox(height: defaultPadding),
            TextButton(
                onPressed: () {
                  Get.toNamed(PROJECT_DETAIL_PATH,
                      parameters: {'id': project.index!});
                },
                child: const Text(
                  'Read More >>',
                  style: TextStyle(color: primaryColor),
                ))
          ],
        ));
  }
}
