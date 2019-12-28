import 'package:flutter/material.dart';

 MediaQueryData _media;

class ProviderDevice with ChangeNotifier {
  int total = 0;

  get rpx => _media.size.width / 750.1;
  set media(media) => _media = media;

  add() {
    this.total += 1;
    notifyListeners();
  }

  clear() {
    this.total = 0;
  }
}
