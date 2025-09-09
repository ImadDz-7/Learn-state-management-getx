import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          MaterialButton(onPressed: () {}, child: Text('Page One')),
          MaterialButton(onPressed: () {}, child: Text('Page Two')),
          MaterialButton(onPressed: () {}, child: Text('Back')),
        ],
      ),
    );
  }
}
