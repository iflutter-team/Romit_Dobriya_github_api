import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen_controller.dart';
import 'login_screen_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(LoginScreenController());

    return Scaffold(
      appBar: loginAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            textFieldEmail(),
            SizedBox(height: 20),
            textFieldPassword(),
            SizedBox(height:20),
            loginButton(),
            SizedBox(height:20),
            signUpButton()
          ],
        ),
      ),
    );
  }
}
