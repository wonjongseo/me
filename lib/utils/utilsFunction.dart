import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

String getDeviceLocale() {
  String deviceLan = '';

  String locale = Get.locale!.toLanguageTag();

  if (!locale.contains('ko')) deviceLan = "Korean";

  if (!locale.contains('en')) deviceLan = "English";

  if (!locale.contains('ja')) deviceLan = "Japanese";

  print('deviceLan : ${deviceLan}');

  return deviceLan;
}

Future<List<File>> pickImages() async {
  List<File> images = [];

  try {
    if (kIsWeb) {
      final result = await FilePicker.platform
          .pickFiles(type: FileType.any, allowMultiple: false);

      if (result != null && result.files.isNotEmpty) {
        for (int i = 0; i < result.files.length; i++) {
          final fileBytes = result.files[i].bytes;
          final fileName = result.files[i].name;

          print('fileName : ${fileName}');

          images.add(File.fromRawPath(fileBytes!));
        }
      }
    } else {
      var files = await FilePicker.platform.pickFiles(
        type: FileType.image,
        allowMultiple: true,
      );

      if (files != null || files!.files.isNotEmpty) {
        for (int i = 0; i < files!.files.length; i++) {
          images.add(File(files.files[i].path!));
        }
      }
    }
  } catch (e) {
    debugPrint(e.toString());
  }

  return images;
}
