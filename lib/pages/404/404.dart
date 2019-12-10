import 'package:flutter/material.dart';

class UndefinedRoutePage extends StatefulWidget {
  UndefinedRoutePage({Key key}) : super(key: key);

  @override
  _UndefinedRoutePageState createState() => _UndefinedRoutePageState();
}

class _UndefinedRoutePageState extends State<UndefinedRoutePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Text(
          '路由不存在',
          style: TextStyle(
            fontSize: 20
          ),
        ),
      ),
    );
  }
}