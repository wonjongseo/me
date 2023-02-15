import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/screens/report/report_screen.dart';
import 'package:wonjongseo/utils/dialog.dart';

class CorporationProjectCard extends StatelessWidget {
  const CorporationProjectCard({super.key, required this.corporationProject});
  final Corporation corporationProject;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            corporationProject.name!,
            style: sectionTitleStyle(context),
          ),
          Text(corporationProject.source!),
          const SizedBox(height: defaultPadding / 2),
          Text(
            corporationProject.description!,
            maxLines: 4,
            style: const TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: defaultPadding),
          TextButton(
              onPressed: () {
                openProjectDialog(context, corporationProject,
                    actions: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.arrow_back_ios))
                    ],
                    child: ReportSceen(
                      corporation: corporationProject,
                    ));
              },
              child: const Text(
                'Read Report >>',
                style: TextStyle(color: primaryColor),
              ))
        ],
      ),
    );
  }
}
