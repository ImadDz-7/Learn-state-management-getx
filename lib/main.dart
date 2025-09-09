import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/views/home_view.dart';

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
    );
  }
}