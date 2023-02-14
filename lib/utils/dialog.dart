import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
