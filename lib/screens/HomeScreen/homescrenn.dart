import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homescreen_controller.dart';
import 'homeScrenn_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(FirstScreenController());
    return Scaffold(
      appBar: appBar,
      body: firstScreenBody,
      floatingActionButton: fButton,
    );
  }
}
