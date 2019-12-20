import 'package:flutter/material.dart';

class ProviderApp with ChangeNotifier {
  final int pageHomeTabHeight = 98;

  int _pageHomeTabIndex = 0;
  int _pageProviderTabIndex = 0;

  int get pageHomeTabIndex => this._pageHomeTabIndex;
  int get pageProviderTabIndex => this._pageProviderTabIndex;

  switchPageHomeTabIndex(index) {
    this._pageHomeTabIndex = index;
    notifyListeners();
  }

  switchPageProviderTabIndex(index, {notify: true}) {
    this._pageProviderTabIndex = index;
    if (notify) notifyListeners();
  }
}
