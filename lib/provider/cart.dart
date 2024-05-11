import 'package:user_app/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double sumPrice = 0;

  add(Item product) {
    selectedProducts.add(product);
    sumPrice += product.price;
    sumPrice = double.parse(sumPrice.toStringAsFixed(2));
    notifyListeners();
  }

  delete(Item product) {
    selectedProducts.remove(product);
    sumPrice -= product.price;
    sumPrice = double.parse(sumPrice.toStringAsFixed(2));
    notifyListeners();
  }

  get itemCount {
    return selectedProducts.length;
  }
}
