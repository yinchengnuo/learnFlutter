import 'dart:async';

import 'package:flutter/material.dart';

class PageTimeout extends StatefulWidget {
  PageTimeout({Key key}) : super(key: key);

  @override
  _PageTimeoutState createState() => _PageTimeoutState();
}

class _PageTimeoutState extends State<PageTimeout> {
  Timer _timer;
  String _status = DateTime.now().toString();

  @override
  void dispose() {
    super.dispose();
    this._timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('定时器'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this._status),
            RaisedButton(
              child: Text('开始'),
              onPressed: () {
                Timer.periodic(Duration(milliseconds: 1), (timer) {
                  this._timer = timer;
                  setState(() {
                    this._status = DateTime.now().toString();
                  });
                });
              },
            ),
            RaisedButton(
              child: Text('取消'),
              onPressed: () {
                this._timer.cancel();
              },
            )
          ],
        ),
      ),
    );
  }
}
