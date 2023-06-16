import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen_controller.dart';


PreferredSizeWidget loginAppbar() => AppBar(  centerTitle: true,

  title: const Text('login screen api '),
);

Widget textFieldEmail() => GetBuilder<LoginScreenController>(
  builder: (controller) => TextField(
    controller: controller.email,
    decoration: InputDecoration(
      label: const Text('email'),
      prefixIcon: const Icon(Icons.account_circle_sharp),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  ),
);

Widget textFieldPassword() => GetBuilder<LoginScreenController>(
  builder: (controller) => TextField(
    controller: controller.password,
    decoration: InputDecoration(
      label: const Text('password'),
      prefixIcon: const Icon(Icons.lock),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50),
      ),
    ),
  ),
);

Widget loginButton() => GetBuilder<LoginScreenController>(
  builder: (controller) => ElevatedButton(
    onPressed: controller.onPressedLogin,
    child: const Text('login'),
  ),
);

Widget signUpButton() => GetBuilder<LoginScreenController>(
  builder: (controller) => ElevatedButton(
    onPressed: controller.signUponPressed,
    child: const Text('sign up'),
  ),
);
