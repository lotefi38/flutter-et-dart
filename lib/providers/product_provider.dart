import'package:flutter/material.dart';
import 'package:store/models/product.dart';

class ProductProvider extends ChangeNotifier {
//stocker un produit
  Product?  _products;

// getter/ setter
  Product? get product => _products;

  set product(Product? value) {
    _products = value;
    notifyListeners();
}
}