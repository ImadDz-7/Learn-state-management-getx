import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 65),
            MaterialButton(
              onPressed: () {},
              child: const Text(
                'Page One',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {},
              child: const Text(
                'Page Two',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
            const SizedBox(height: 15),
            MaterialButton(
              onPressed: () {},
              child: const Text(
                'Back',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
