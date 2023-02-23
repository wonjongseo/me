import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/report/report_screen.dart';
import 'package:url_launcher/url_launcher.dart';

void openProjectDialog(BuildContext context, Corporation corporation,
    {List<Widget>? actions, Widget? child}) {
  if (GetPlatform.isMobile || Responsive.isMobile(context)) {
    Get.to(() => ReportSceen(corporation: corporation));
  } else {
    Get.dialog(AlertDialog(
      title: Text(corporation.name),
      content: SizedBox(
        width: !Responsive.isMobile(context)
            ? MediaQuery.of(context).size.width - 300
            : null,
        child: child != null
            ? child
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(corporation.source),
                  Text(corporation.description)
                ],
              ),
      ),
      actions: actions,
    ));
  }
}
