import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/rebuild_controller2.dart';

class PageThreeView extends StatelessWidget {
   PageThreeView({super.key});

  RebuildController2 extController = Get.put(RebuildController2());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Three'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 20),
            GetX<RebuildController2>(
              init: RebuildController2(),
              builder: (controller) {
                print('Rebuild count1');
                return Text(
                  '${controller.count1}',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            GetX<RebuildController2>(
              builder: (controller) {
                print('Rebuild count2');
                return Text(
                  '${controller.count2}',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            GetX<RebuildController2>(
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
