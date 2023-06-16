import 'package:api/screens/signup_screen/signup_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSizeWidget signUpAppbar() => AppBar(
      centerTitle: true,
      title: const Text('sign up screen api'),
    );

Widget textFieldName() => GetBuilder<SignupScreenController>(
      builder: (controller) => TextField(
        controller: controller.name,
        decoration: InputDecoration(
          label: const Text('name'),
          prefixIcon: const Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
    );

Widget textFieldUserName() => GetBuilder<SignupScreenController>(
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

Widget textFieldPassword() => GetBuilder<SignupScreenController>(
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

Widget signUpButton() => GetBuilder<SignupScreenController>(
      builder: (controller) => ElevatedButton(
        onPressed: controller.onPressedSignupAddData,
        child: const Text('sign up'),
      ),
    );
