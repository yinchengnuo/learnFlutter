import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConTainer组件'),
      ),
      body: Center(
        child: Container(
          width: 123,
          height: 123,
          decoration: BoxDecoration(
            color: Colors.red,
            border: Border(
              bottom: BorderSide(color: Colors.black, width: 10, style: BorderStyle.solid)
            )
          ),
          child: Text(
            'Container',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            ),
          ),
        ),
      ),
    );
  }
}