import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  TabHome({Key key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> {
  int _counter = 0; // 按钮点击次数
  void _incrementCounter() {
    // 点击按钮执行的方法
    setState(() {
      // setState 方法将数据的变化实时映射到UI
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 官方实例计数器'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '点击按钮的次数',
            ),
            Text(
              this._counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: '加数器',
        child: Icon(Icons.add),
      ),
    );
  }
}
