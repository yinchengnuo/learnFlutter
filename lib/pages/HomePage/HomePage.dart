import 'package:flutter/material.dart';
import 'TabHome.dart';
import 'TabList.dart';

class HomePage extends StatefulWidget { // 有状态组件本体
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { // 有状态组件的状态部分
  int _bottomNavigationBarCurrentIndex = 0;
  List _bottomNavigationBarCurrentItemsList = <Widget>[TabHome(), TabList()];
  @override
  Widget build(BuildContext context) { // 有状态组件的 UI 构建是在有状态组件的状态部分构建的
    return Scaffold( // Scaffold 是 Material 库中提供的页面脚手架，它提供了默认的导航栏、标题和包含主屏幕widget树的body属性等
      body: this._bottomNavigationBarCurrentItemsList[this._bottomNavigationBarCurrentIndex], // 页面内容部分
      bottomNavigationBar: BottomNavigationBar( // 底部导航栏
        currentIndex: this._bottomNavigationBarCurrentIndex,
        onTap: (index) {
          setState(() {
            this._bottomNavigationBarCurrentIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('组件')
          ),
        ],
      ),
    );
  }
}