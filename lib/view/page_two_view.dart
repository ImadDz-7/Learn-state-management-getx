import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/home_controller.dart';
import 'package:learn_getx_app/view/page_one_view.dart';
import 'package:learn_getx_app/view/page_three_view.dart';

class PageTwoView extends StatelessWidget {
  PageTwoView({super.key});

  final HomeController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${controller.counter}',
              style: TextStyle(
                color: Colors.black,
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
