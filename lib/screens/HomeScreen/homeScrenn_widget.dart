import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homescreen_controller.dart';

AppBar appBar = AppBar(
  centerTitle: true,
  title: const Text('API'),
);

Widget firstScreenBody = GetBuilder<FirstScreenController>(
  id: 'userList',
  builder: (controller) => controller.loader
      ? Center(
          child: SizedBox(
            height: Get.height * .25,
            width: Get.width * .5,
            child: const CircularProgressIndicator(),
          ),
        )
      : GridView.builder(
          itemCount: controller.productsModel!.products!.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => controller.onTapProduct(index),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    controller.productsModel!.products![index].images!.first,
                  ),
                ),
              ),
            ),
          ),
        ),
);

Widget fButton = GetBuilder<FirstScreenController>(
  builder: (controller) =>
      FloatingActionButton(onPressed: () => controller.fButton()),
);

Widget selectedProduct(int index) => GetBuilder<FirstScreenController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          //leading: const BackButton(),
          centerTitle: true,
          title: Text(
            controller.productsModel!.products![index].title!,
          ),
        ),
        body: AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          height: Get.height,
          width: Get.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Get.width * .5,
                  height: Get.height * .25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        controller
                            .productsModel!.products![index].images!.first,
                      ),
                    ),
                  ),
                  child: InkWell(
                      onTap: () => controller.onTapSelectedImage(index)),
                ),
                Text(
                  controller.productsModel!.products![index].category
                      .toString(),
                ),
                Text(
                  controller.productsModel!.products![index].title!,
                ),
                Text(
                  controller.productsModel!.products![index].discountPercentage
                      .toString(),
                ),
                Text(
                  controller.productsModel!.products![index].price.toString(),
                ),
                Text(
                  controller.productsModel!.products![index].brand.toString(),
                ),
                Text(
                  controller.productsModel!.products![index].description!,
                ),
              ],
            ),
          ),
        ),
      ),
    );

Widget selectedImage(int index) => GetBuilder<FirstScreenController>(
      builder: (controller) => AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              controller.productsModel!.products![index].images!.first,
            ),
          ),
        ),
        child: GestureDetector(
          onTap: () => controller.backButton(),
        ),
      ),
    );

// ListView.builder(
// itemCount: controller.imageList!.length,
// itemBuilder: (context, index) => GestureDetector(
// onLongPress: () => controller.onLongPressImage(index),
// child: ListTile(
// leading: GestureDetector(
// onTap: () => controller.onTapImage(index),
// child: Image.network(
// controller.imageList![index].url!,
// ),
// ),
// title: Text(controller.imageList![index].title!),
// ),
// ),
