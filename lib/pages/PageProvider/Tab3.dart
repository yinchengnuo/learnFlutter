import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderDevice.dart';

class Tab3 extends StatefulWidget {
  Tab3({Key key}) : super(key: key);

  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> with AutomaticKeepAliveClientMixin {
  ProviderDevice _$device;
  int _counter = 0;
  void _incrementCounter() {
    setState(() => this._counter++);
    this._$device.add();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动态'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Consumer<ProviderDevice>(
        builder: (BuildContext context, ProviderDevice device, _) {
          this._$device = device;
          return Column(
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
                    'total: ${this._$device.total.toString()}',
                    style: TextStyle(fontSize: 56),
                  ),
                ),
              ]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: '加数器',
        heroTag: 'providerpage3',
        child: Icon(Icons.add),
        onPressed: this._incrementCounter,
      ),
    );
  }
}
