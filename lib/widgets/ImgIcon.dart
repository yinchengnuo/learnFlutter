import 'package:flutter/material.dart';

class ImgIcon extends StatelessWidget {
  final String path;
  final double size;
  final Color color;

  const ImgIcon(String s, {Key key, this.path, this.size, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
        AssetImage(this.path),
        size: this.size,
        color: this.color,
      );
  }
}
