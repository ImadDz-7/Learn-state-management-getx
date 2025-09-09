import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/views/page_one_view.dart';
import 'package:learn_getx_app/views/page_three_view.dart';
import 'package:learn_getx_app/views/page_two_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 65),
            MaterialButton(
              onPressed: () {
                Get.to(const PageOneView());
              },
              color: Colors.red,
              child: const Text(
                'Page One',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                Get.to(const PageTwoView());
              },
              color: Colors.red,
              child: const Text(
                'Page Two',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                Get.to(const PageThreeView());
              },
              color: Colors.red,
              child: const Text(
                'Page Three',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                Get.back;
              },
              color: Colors.red,
              child: const Text(
                'Back',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
