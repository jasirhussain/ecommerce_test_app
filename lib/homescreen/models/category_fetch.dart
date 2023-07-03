import 'dart:convert';

import 'package:ecommerce_test/homescreen/models/products_model.dart';
import 'package:http/http.dart' as http;

class ProductFetch {
  var url, response;
  List data = [];
  List<ProductModel> categoryList = [];

  get statusCode => null;
  Future<List<ProductModel>> getProducts() async {
    // final pref = await SharedPreferences.getInstance();
    // String token;
    // token = pref.getString('accessToken') ?? '';

    url = Uri.parse('https://api.escuelajs.co/api/v1/products');

    response = await http.get(
      url,
    );
    data = jsonDecode(utf8.decode(response.bodyBytes));
    if (response.statusCode == 200) {
      print("object");

      print(response);
      print("dhb");
      categoryList = data.map((json) => ProductModel.fromJson(json)).toList();
    }
    return categoryList;
  }
}
