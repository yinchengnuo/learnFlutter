import 'package:flutter/material.dart';

class TabList extends StatefulWidget {
  TabList({Key key}) : super(key: key);

  @override
  _TabListState createState() => _TabListState();
}

class _TabListState extends State<TabList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter 组件列表'
        ),
      ),
      body: Wrap(
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/container');
            },
            child: Text('Container组件'),
          )
        ],
      ),
    );
  }
}