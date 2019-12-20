import 'package:flutter/material.dart';

class TabHome extends StatefulWidget {
  TabHome({Key key}) : super(key: key);

  @override
  _TabHomeState createState() => _TabHomeState();
}

class _TabHomeState extends State<TabHome> with AutomaticKeepAliveClientMixin {
  int _counter = 0;
  void _incrementCounter() {
    setState(() => this._counter++);
  }

  @override
  bool get wantKeepAlive => true;

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
        onPressed: this._incrementCounter,
        tooltip: '加数器',
        child: Icon(Icons.add),
      ),
    );
  }
}
