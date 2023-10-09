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
