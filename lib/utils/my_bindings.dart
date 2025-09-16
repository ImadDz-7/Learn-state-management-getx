import 'package:get/get.dart';
import 'package:learn_getx_app/controller/home_controller.dart';

class MyBindings implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }

}