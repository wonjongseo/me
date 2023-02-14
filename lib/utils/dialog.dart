import 'package:flutter/material.dart';
import 'package:get/get.dart';

void openDialog({title, content, List<Widget>? actions}) {
  Get.dialog(AlertDialog(
    title: Text(title),
    content: Text(content),
    actions: actions,
  ));
}
