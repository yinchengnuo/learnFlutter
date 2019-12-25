import 'dart:async';
import 'package:flutter/material.dart';

class PageStream extends StatefulWidget {
  PageStream({Key key}) : super(key: key);

  @override
  _PageStreamState createState() => _PageStreamState();
}

class _PageStreamState extends State<PageStream> {
  String _status = '没有订阅';
  StreamController _streamController;
  StreamSubscription _streamSubscription;

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'streamData';
  }

  void _onData(data) {
    setState(() {
      this._status = '接收到数据$data';
    });
  }

  void _onError(err) {
    print(err);
  }

  void _onDone() {
    print('onDone');
  }

  // 添加订阅
  void _add() async {
    setState(() {
      this._status = '添加订阅，3 秒后会接收到一个 streamData';
    });
    this._streamController.add(await this.fetchData());
  }

  // 暂停订阅
  void _pause() {
    this._streamSubscription.pause();
    setState(() {
      this._status = '暂停订阅';
    });
  }

  // 恢复订阅
  void _resume() {
    this._streamSubscription.resume();
    setState(() {
      this._status = '恢复订阅, 会接收到一个 streamData';
    });
  }

  // 取消订阅
  void _cnacel() {
    this._streamSubscription.cancel();
    setState(() {
      this._status = '取消订阅';
    });
  }

  @override
  void initState() {
    super.initState();
    this._streamController = StreamController();
    this._streamSubscription = this._streamController.stream.listen(this._onData, onError: this._onError, onDone: this._onDone);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Wrap(
            spacing: 88,
            runSpacing: 8,
            children: <Widget>[
              RaisedButton(
                child: Text('发布订阅'),
                onPressed: () {
                  this._add();
                },
              ),
              RaisedButton(
                child: Text('暂停订阅'),
                onPressed: () {
                  this._pause();
                },
              ),
              RaisedButton(
                child: Text('恢复订阅'),
                onPressed: () {
                  this._resume();
                },
              ),
              RaisedButton(
                child: Text('取消订阅'),
                onPressed: () {
                  this._cnacel();
                },
              ),
            ],
          ),
          Text(this._status),
        ],
      )),
    );
  }
}
