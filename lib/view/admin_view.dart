import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/controller/home_controller.dart';
import 'package:learn_getx_app/main.dart';
import 'package:learn_getx_app/utils/my_bindings.dart';
import 'package:learn_getx_app/view/page_four_view.dart';
import 'package:learn_getx_app/view/page_one_view.dart';
import 'package:learn_getx_app/view/page_three_view.dart';
import 'package:learn_getx_app/view/page_two_view.dart';

class AdminView extends StatelessWidget {
  AdminView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Admin'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                sharepref!.clear();
                Get.offAllNamed('/');
              }, 
              color: Colors.red,
              child: const Text('Sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
