import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/rebuild_controller.dart';

class PageFourView extends StatelessWidget {
  const PageFourView({super.key});

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
                return Text(
                  '0',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            GetBuilder<RebuildController>(
              builder: (controller) {
                return Text(
                  '0',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            GetBuilder<RebuildController>(
              builder: (controller) {
                return Text(
                  '0',
                  style: const TextStyle(fontSize: 28),
                );
              },
            ),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text('Count 1'),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text('Count 2'),
            ),
          ],
        ),
      ),
    );
  }
}
