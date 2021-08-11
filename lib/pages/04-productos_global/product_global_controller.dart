import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_getx/models/product_model.dart';
import 'package:get/get.dart';

class ProductGlobalController extends GetxController {
  List<ProductModel> _products = [];
  List<ProductModel> get products => _products;

  Map<String, ProductModel> _favorites = Map();
  Map<String, ProductModel> get favorites => _favorites;

  @override
  void onInit() {
    print("Init Global");
    _loadProducts();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  _loadProducts() async {
    try {
      final String data = await rootBundle.loadString("assets/products.json");

      this._products = (jsonDecode(data) as List)
          .map((item) => ProductModel.fromJson(item))
          .toList();
      print(_products.length.toString());
    } catch (e) {
      print(e.toString());
    }
  }

  onFavorite(int index, bool isFavorite) {
    final product = this._products[index];
    product.isFavorite = isFavorite;

    if (isFavorite) {
      this._favorites[product.name ?? ""] = product;
    } else {
      this._favorites.remove(product.name ?? "");
    }

    /* 
      Map<String, dynamic> products = {
        "P001": "Leche",
        "P002": "Arroz",
      }; 
    */
    update(["products", "favorites"]);
  }
}
