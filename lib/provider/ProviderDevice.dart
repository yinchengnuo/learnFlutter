import 'package:flutter/material.dart';

class ProviderDevice with ChangeNotifier {
  int total = 0;

  add() {
    this.total += 1;
  }

  clear() {
    this.total = 0;
  }
}
