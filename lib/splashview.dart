import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app_test/LoginView.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      Get.to(LoginView());
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYh1cwynwbXGqSKum_wRM8Iu-h3xEzxIMm1wHIlFRH23IPZK8FFFk92sg23VkrV7UvNl8&usqp=CAU",
        ),
      ),
    );
  }
}
