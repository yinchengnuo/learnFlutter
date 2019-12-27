import 'package:flutter/material.dart';

class ProviderWaterfall with ChangeNotifier {
  double _oldH = 0;
  double _height = 1234;
  int _test = 0;

  double get height => this._height;

  void setHeight(h) {
    this._height = h;

    Future.microtask(() {
      if (h != this._oldH) {
        this._oldH = this._height = h;
        notifyListeners();
      }
      print(this._test++);
    });
  }
}
