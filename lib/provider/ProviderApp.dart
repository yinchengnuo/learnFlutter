import 'package:flutter/material.dart';

class ProviderApp with ChangeNotifier {
  int pageHomeTabIndex = 0;
  int pageProviderTabIndex = 0;

  final int pageHomeTabHeight = 98;

  switchPageHomeTabIndex(index) {
    this.pageHomeTabIndex = index;
  }

  switchPageProviderTabIndex(index) {
    this.pageProviderTabIndex = index;
  }
}
