import 'package:api/screens/signup_screen/signup_screen_controller.dart';
import 'package:api/screens/signup_screen/signup_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignupScreenController());
    return Scaffold(
      appBar: signUpAppbar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            textFieldName(),
            SizedBox(height:20),
            textFieldUserName(),
            SizedBox(height:20),
            textFieldPassword(),
            SizedBox(height:20),

            signUpButton(),
          ],
        ),
      ),
    );
  }
}
