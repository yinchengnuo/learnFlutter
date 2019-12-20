import 'package:flutter/material.dart';

class PageInkWell extends StatefulWidget {
  PageInkWell({Key key}) : super(key: key);

  @override
  _PageInkWellState createState() => _PageInkWellState();
}

class _PageInkWellState extends State<PageInkWell> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InkWell 水波纹'),
      ),
      body: Center(
        child: InkWellPageBody(),
      ),
    );
  }
}

class InkWellPageBody extends StatefulWidget {
  InkWellPageBody({Key key}) : super(key: key);

  @override
  _InkWellPageBodyState createState() => _InkWellPageBodyState();
}

class _InkWellPageBodyState extends State<InkWellPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: <Widget>[InkWellPageBodyTop()],
      ),
    );
  }
}

class InkWellPageBodyTop extends StatefulWidget {
  InkWellPageBodyTop({Key key}) : super(key: key);

  @override
  _InkWellPageBodyTopState createState() => _InkWellPageBodyTopState();
}

class _InkWellPageBodyTopState extends State<InkWellPageBodyTop> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.yellow,
      child: InkWell(
        onTap: () {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('底部 SnackBar'),
          ));
        },
        splashColor: Colors.green,
        // radius: 456,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 123,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black45),
          ),
          width: double.infinity,
          child: Center(
            child: Container(
              color: Colors.red,
              child: Text('Flat Button'),
            ),
          ),
        ),
      ),
    );
  }
}
