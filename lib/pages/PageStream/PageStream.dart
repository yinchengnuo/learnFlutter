import 'dart:async';

import 'package:flutter/material.dart';

class PageStream extends StatefulWidget {
  PageStream({Key key}) : super(key: key);

  @override
  _PageStreamState createState() => _PageStreamState();
}

class _PageStreamState extends State<PageStream> {
  Stream _stream;
  StreamSubscription _streamsubscription;

  Future<String> fetchData () async {
    await Future.delayed(Duration(seconds: 3));
    return 'stream';
  }

  void onData(data) {
    print(data);
  }

  void onError(err) {
    print(err);
  }

  void onDone() {
    print('onDone');
  }

  @override
  void initState() {
    super.initState();
    this._stream = Stream.fromFuture(this.fetchData());
    this._streamsubscription = this._stream.listen(this.onData, onError: this.onError, onDone: this.onDone);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
      ),
      body: Center(
        child: Wrap(
          spacing: 88,
          runSpacing: 8,
          children: <Widget>[
            RaisedButton(child: Text('发布订阅'), onPressed: () {}),
            RaisedButton(child: Text('暂停订阅'), onPressed: () {}),
            RaisedButton(child: Text('恢复订阅'), onPressed: () {}),
            RaisedButton(child: Text('取消订阅'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
