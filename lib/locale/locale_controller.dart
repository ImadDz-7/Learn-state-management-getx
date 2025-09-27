import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/main.dart';

class MyLocaleController extends GetxController {

  void changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    Get.updateLocale(locale);
  }
}
