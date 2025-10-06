import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/home_controller.dart';
import 'package:learn_getx_app/locale/locale_controller.dart';
import 'package:learn_getx_app/main.dart';
import 'package:learn_getx_app/utils/my_bindings.dart';
import 'package:learn_getx_app/view/page_four_view.dart';
import 'package:learn_getx_app/view/page_one_view.dart';
import 'package:learn_getx_app/view/page_three_view.dart';
import 'package:learn_getx_app/view/page_two_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  // final controller = Get.lazyPut(() => HomeController(), fenix: true);

  @override
  Widget build(BuildContext context) {
    MyLocaleController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('1'.tr),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
              },
              color: Colors.red,
              child: const Text('Change theme'),
            ),
            // const SizedBox(height: 25),
            // MaterialButton(
            //   onPressed: () {
            //     Get.to(() => PageTwoView());
            //   },
            //   color: Colors.red,
            //   child: const Text('Page Two'),
            // ),
            // const SizedBox(height: 25),
            // MaterialButton(
            //   onPressed: () {
            //     Get.to(() => PageThreeView());
            //   },
            //   color: Colors.red,
            //   child: const Text('Page Three'),
            // ),
            // const SizedBox(height: 25),
            // MaterialButton(
            //   onPressed: () {
            //     Get.to(PageFourView());
            //   },
            //   color: Colors.red,
            //   child: const Text('Page Four'),
            // ),
            // const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
