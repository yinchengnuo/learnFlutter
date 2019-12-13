import 'package:flutter/material.dart';

class TabList extends StatefulWidget {
  TabList({Key key}) : super(key: key);

  @override
  _TabListState createState() => _TabListState();
}

class _TabListState extends State<TabList> {

  List routerList = <Map> [
    { 'name': 'Container组件', 'routeName': '/container' },
    { 'name': 'TabController组件', 'routeName': '/tabcontroller' },
    { 'name': 'Swiper组件', 'routeName': '/swiper' },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter 组件列表'
        ),
      ),
      body: Wrap(
        children: this.routerList.map((item) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: RaisedButton(
              child: Text(item['name']),
              onPressed: () {
                Navigator.pushNamed(context, item['routeName']);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}