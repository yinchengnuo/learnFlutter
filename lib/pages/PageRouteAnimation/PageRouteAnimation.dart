import 'package:flutter/material.dart';

class PageRouteAnimation extends StatelessWidget {
  const PageRouteAnimation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('路由动画'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        color: Colors.pinkAccent,
        child: null,
      ),
    );
  }
}
