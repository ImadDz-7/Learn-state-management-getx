import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/home_controller.dart';
import 'package:learn_getx_app/view/page_one_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Get.to(PageOneView());
              },
              color: Colors.red,
              child: const Text('Page One'),
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: const Text('Page Two'),
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: const Text('Page Three'),
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () {},
              color: Colors.red,
              child: const Text('Page Four'),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
