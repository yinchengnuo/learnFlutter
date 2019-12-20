import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderDevice.dart';

class Tab1 extends StatefulWidget {
  Tab1({Key key}) : super(key: key);

  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> with AutomaticKeepAliveClientMixin {
  int _counter = 0;
  void _incrementCounter() {
    setState(() => this._counter++);
    Provider.of<ProviderDevice>(context).add();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment(0, 0),
              child: Text(
                this._counter.toString(),
                style: TextStyle(fontSize: 123),
              ),
            ),
            Container(
              alignment: Alignment(0, 0),
              child: Text(
                'total: ${Provider.of<ProviderDevice>(context).total.toString()}',
                style: TextStyle(fontSize: 56),
              ),
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: this._incrementCounter,
        tooltip: '加数器',
        child: Icon(Icons.add),
      ),
    );
  }
}
