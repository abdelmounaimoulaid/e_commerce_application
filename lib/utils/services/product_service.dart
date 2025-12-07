import 'dart:convert';
import 'package:e_commerce/utils/models/product_model.dart';
import 'package:flutter/services.dart';

class ProductService {
  static Future<List<Product>> loadProducts() async {
    final String response = await rootBundle.loadString('assets/products.json');
    final List<dynamic> data = json.decode(response);
    return data.map((json) => Product.fromJson(json)).toList();
  }
}
