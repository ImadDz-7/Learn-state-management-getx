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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
                const SizedBox(width: 15),
                Text('0', style: TextStyle(fontSize: 28, color: Colors.red)),
                const SizedBox(width: 15),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
