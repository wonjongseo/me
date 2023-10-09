import 'package:get/get.dart';

String getDeviceLocale() {
  String deviceLan = '';
  switch (Get.deviceLocale.toString()) {
    case "ko_KR":
      deviceLan = "Korean";
      break;

    case "en":
      deviceLan = "English";

      break;

    case "ja_US":
      deviceLan = "Japanese";
      break;
  }

  return deviceLan;
}
