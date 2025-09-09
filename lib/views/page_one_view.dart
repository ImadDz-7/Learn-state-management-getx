import 'package:flutter/material.dart';

class PageOneView extends StatelessWidget {
  const PageOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page One'),
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
