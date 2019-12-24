import 'package:flutter/material.dart';
import '../../provider/ProviderApp.dart';

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
    super.build(context);

    final double rpx = MediaQuery.of(context).size.width / 750;
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 官方实例计数器'),
      ),
      body: Container(
        alignment: Alignment(0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('点击按钮的次数'),
            Text(this._counter.toString(), style: Theme.of(context).textTheme.display1),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 88,
        height: 88,
        margin: EdgeInsets.all(4),
        child: FloatingActionButton(
          elevation: 0,
          onPressed: this._incrementCounter,
          tooltip: '加数器',
          child: Icon(Icons.add, size: 56),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.black12,
        shape: CircularNotchedRectangle(),
        child: Container(height: ProviderApp().pageHomeTabHeight * 3 * rpx),
      ),
    );
  }
}
