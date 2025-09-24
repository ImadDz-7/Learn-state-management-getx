import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/main.dart';
import 'package:learn_getx_app/view/home_view.dart';

class SuperView extends StatelessWidget {
  const SuperView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Super'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Super',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
