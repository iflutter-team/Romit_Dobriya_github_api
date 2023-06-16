import 'dart:convert';
import 'package:api/service/http_service.dart';
import 'package:api/utils/api_end_points.dart';
import 'package:http/http.dart' as http;

import '../../models/product_model.dart';

class FirstScreenApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpService.getApi(url: ApiEndPointResource.productAPI);
      if (response != null && response.statusCode == 200) {
        return productsModelFromJson(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }



}
