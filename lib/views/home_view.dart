import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/views/page_one_view.dart';
import 'package:learn_getx_app/views/page_three_view.dart';
import 'package:learn_getx_app/views/page_two_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int counter = 0;
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
                  onPressed: () {
                    counter++;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(width: 25),
                Text(
                  '$counter',
                  style: const TextStyle(
                    fontSize: 28,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(width: 25),
                IconButton(
                  onPressed: () {
                    counter--;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
