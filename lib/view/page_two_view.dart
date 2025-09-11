import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/view/page_one_view.dart';
import 'package:learn_getx_app/view/page_three_view.dart';

class PageTwoView extends StatelessWidget {
  const PageTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 65),
            MaterialButton(
              onPressed: () {
                Get.offAll( PageOneView());
              },
              
              color: Colors.red,
              child: const Text(
                'Page One (offAll)',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                Get.to(PageThreeView());
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
