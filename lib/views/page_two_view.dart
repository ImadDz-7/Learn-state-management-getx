import 'package:flutter/material.dart';

class PageTwoView extends StatelessWidget {
  const PageTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
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
