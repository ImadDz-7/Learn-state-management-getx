import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/middleware/auth_middleware.dart';
import 'package:learn_getx_app/utils/my_bindings.dart';
import 'package:learn_getx_app/view/home_view.dart';
import 'package:learn_getx_app/view/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharepref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharepref = await SharedPreferences.getInstance();
  runApp(const LearnGetxApp());
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
          middlewares: [AuthMiddleWare()],
        ),
        GetPage(name: '/home', page: () => HomeView()),
      ],
    );
  }
}
