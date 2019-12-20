import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderDevice.dart';

class Tab3 extends StatefulWidget {
  Tab3({Key key}) : super(key: key);

  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> with AutomaticKeepAliveClientMixin {
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
