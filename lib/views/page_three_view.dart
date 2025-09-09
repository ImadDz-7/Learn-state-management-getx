import 'package:flutter/material.dart';

class PageThreeView extends StatelessWidget {
  const PageThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Three'),
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
