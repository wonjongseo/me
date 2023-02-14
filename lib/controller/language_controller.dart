import 'package:get/get.dart';

class LanguaguesController extends GetxController {
  late String locale;

  LanguaguesController(this.locale);

  changeLocale(String locales) {
    this.locale = locales;

    update();
  }
}
