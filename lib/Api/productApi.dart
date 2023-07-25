import 'dart:convert';

import 'package:http/http.dart'as http;


import 'package:untitled/MdelClass/ProductModel.dart';

class ProductApi{
var url ='https://fakestoreapi.com/products/1';

Future<ProductModel?> fetchService() async {

  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
var data = await json.decode(response.body);
return ProductModel.fromJson(data);
  } else {
return null;
  }
}}
