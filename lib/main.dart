import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/utils/my_bindings.dart';
import 'package:learn_getx_app/view/home_view.dart';

void main() {
  runApp(const LearnGetxApp());
}

class LearnGetxApp extends StatelessWidget {
  const LearnGetxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
      initialBinding: MyBindings(),
    );
  }
}