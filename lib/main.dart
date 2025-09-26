import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/middleware/auth_middleware.dart';
import 'package:learn_getx_app/middleware/super_middleware.dart';
import 'package:learn_getx_app/services/settings_services.dart';
import 'package:learn_getx_app/utils/my_bindings.dart';
import 'package:learn_getx_app/view/admin_view.dart';
import 'package:learn_getx_app/view/home_view.dart';
import 'package:learn_getx_app/view/login_view.dart';
import 'package:learn_getx_app/view/super_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharepref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const LearnGetxApp());
}

Future initialServices() async{
  await Get.putAsync(() => SettingsServices().init());
}

class LearnGetxApp extends StatelessWidget {
  const LearnGetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginView(),
          middlewares: [AuthMiddleWare(), SuperMiddleWare()],
        ),
        GetPage(name: '/home', page: () => HomeView()),
        GetPage(name: '/admin', page: () => AdminView()),
        GetPage(name: '/super', page: () => SuperView()),
      ],
    );
  }
}
