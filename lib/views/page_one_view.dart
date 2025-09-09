import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/views/page_three_view.dart';
import 'package:learn_getx_app/views/page_two_view.dart';

class PageOneView extends StatelessWidget {
  const PageOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 65),
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
                Get.off(const PageThreeView());
              },
              color: Colors.red,
              child: const Text(
                'Page Three (off)',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                Get.back();
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
