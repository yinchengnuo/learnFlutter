import 'package:flutter/material.dart';

class Page404 extends StatefulWidget {
  Page404({Key key}) : super(key: key);

  @override
  _Page404State createState() => _Page404State();
}

class _Page404State extends State<Page404> {
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