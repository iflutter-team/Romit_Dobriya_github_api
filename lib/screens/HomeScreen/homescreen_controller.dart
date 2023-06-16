

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../models/product_model.dart';
import 'homeScrenn_widget.dart';
import 'home_screen_api.dart';

class FirstScreenController extends GetxController {
  // List<ImageModel>? imageList;
  bool loader = false;
  ProductsModel? productsModel;

  @override
  onInit() {
    // getImageList();
    getProductList();
    super.onInit();
  }

  Future<void> getProductList() async {
    loader = true;
    update(["userList"]);
    productsModel = await FirstScreenApi.getData();
    loader = false;
    update(['userList']);
  }

  void fButton() {}

  void onTapProduct(int index) {
    Get.dialog(selectedProduct(index));
  }

  void onTapSelectedImage(int index) {
    Get.dialog(selectedImage(index));
  }
  void backButton(){Get.back();}

// Future<void> getImageList() async {
//   loader = true;
//   update(["userList"]);
//   imageList = await FirstScreenApi.getData();
//   loader = false;
//   update(['userList']);
// }
//
// void onTapImage(int index) {
//   Get.dialog(
//     Container(
//       height: 200,
//       width: 200,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: NetworkImage(imageList![index].url!),
//         ),
//       ),
//       child: GestureDetector(
//         onTap: () {
//           Get.back();
//         },
//       ),
//     ),
//   );
// }
//
// void onLongPressImage(int index) {
//   Get.dialog(
//     AlertDialog(
//       title: TextButton(
//         onPressed: () {
//           imageList!.removeAt(index);
//           update(["userList"]);
//           Get.back();
//         },
//         child: const Text(
//           'tap here to remove data',
//           style: TextStyle(fontSize: 25, color: Colors.red),
//         ),
//       ),
//     ),
//   );
// }
}
