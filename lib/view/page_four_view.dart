import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/rebuild_controller.dart';

class PageFourView extends StatelessWidget {
   PageFourView({super.key});

  RebuildController extController = Get.put(RebuildController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Four'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            GetBuilder<RebuildController>(
              init: RebuildController(),
              builder: (controller) {
                print('Rebuild count1');
                return Text(
                  '${controller.count1}',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            GetBuilder<RebuildController>(
              builder: (controller) {
                print('Rebuild count2');
                return Text(
                  '${controller.count2}',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            GetBuilder<RebuildController>(
              builder: (controller) {
                print('Rebuild result');
                return Text(
                  '${controller.result()}',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                extController.incrementOne();
              },
              color: Colors.blue,
              child: const Text('Count 1'),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {
                extController.incrementTwo();
              },
              color: Colors.blue,
              child: const Text('Count 2'),
            ),
          ],
        ),
      ),
    );
  }
}
