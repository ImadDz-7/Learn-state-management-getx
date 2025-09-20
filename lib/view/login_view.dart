import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx_app/view/home_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                
                Get.offAllNamed('/home');
              },
              color: Colors.blue,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
