import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService{
  late SharedPreferences sharedPref;

  Future<SettingsServices> init() async{
    // Start services
    sharedPref = await SharedPreferences.getInstance();
    // End
    return this;
  }
}