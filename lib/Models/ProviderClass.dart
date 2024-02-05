import 'package:Flourish/Models/Product_data.dart';
import 'package:flutter/material.dart';

class AppData extends ChangeNotifier {
  double _totalPrice = 0;

  getAllPrice() {
    _totalPrice = Data.getPrice();
    notifyListeners();
    return _totalPrice;
  }

  getFavNumber() {
    notifyListeners();
    return Data.favData('').length;
  }

  getProductCartNumber() {
    notifyListeners();
    return Data.CartData('').length;
  }
}
