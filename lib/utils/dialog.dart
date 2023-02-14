import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/responsive.dart';

void openDialog({title, content, List<Widget>? actions}) async {
  Get.dialog(AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: actions,
  ));

  if (title == 'DOWNLOAD CV') {
    await Future.delayed(const Duration(milliseconds: 700));

    if (Get.isDialogOpen != null) {
      Get.back();
    }

    Get.snackbar(
      'CV',
      'Download is completed. (for test)',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

void openProjectDialog(BuildContext context, Corporation corporation,
    {List<Widget>? actions}) async {
  Get.dialog(AlertDialog(
    title: Text(corporation.name),
    content: SizedBox(
      width: Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width - 300
          : MediaQuery.of(context).size.width - 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(corporation.source), Text(corporation.description)],
      ),
    ),
    actions: actions,
  ));
}
