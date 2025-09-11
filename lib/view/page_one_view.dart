import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/home_controller.dart';

class PageOneView extends StatelessWidget {
  PageOneView({super.key});

  // var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(
              init: HomeController(),
              builder: (controller) {
                print('Rebuild');
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.increment();
                      },
                      icon: const Icon(Icons.add),
                    ),
                    const SizedBox(width: 25),
                    Text(
                      '${controller.counter}',
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 25),
                    IconButton(
                      onPressed: () {
                        controller.decrement();
                      },
                      icon: const Icon(Icons.remove),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
