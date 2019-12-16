import 'package:flutter/material.dart';

class ScreenEventPage extends StatefulWidget {
  ScreenEventPage({Key key}) : super(key: key);

  @override
  _ScreenEventPageState createState() => _ScreenEventPageState();
}

class _ScreenEventPageState extends State<ScreenEventPage> {
  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('手势事件'),
      ),
      body: Center(
        child: GestureDetector(
          onTapDown: (d) {
            setState(() {
              this._message = '按下';
            });
          },
          onTapUp: (d) {
            setState(() {
              this._message = '抬起';
            });
          },
          onTap: () {
            setState(() {
              this._message = '点击';
            });
          },
          onTapCancel: () {
            setState(() {
              this._message = '取消点击';
            });
          },
          onDoubleTap: () {
            setState(() {
              this._message = '双击';
            });
          },
          onLongPress: () {
            setState(() {
              this._message = '长按';
            });
          },
          onLongPressUp: () {
            setState(() {
              this._message = '长按松开';
            });
          },
          onVerticalDragDown: (_) {
            setState(() {
              this._message = "竖直方向拖动按下" + _.globalPosition.toString();
            });
          },
          onVerticalDragStart: (_) {
            setState(() {
              this._message = "竖直方向拖动开始" + _.globalPosition.toString();
            });
          },
          onVerticalDragUpdate: (_) {
            setState(() {
              this._message = "竖直方向拖动更新" + _.globalPosition.toString();
            });
          },
          onVerticalDragCancel: () {
            setState(() {
              this._message = "竖直方向拖动取消";
            });
          },
          onVerticalDragEnd: (_) {
            setState(() {
              this._message = "竖直方向拖动结束";
            });
          },
          onHorizontalDragDown: (_) {
            setState(() {
              this._message = "水平方向拖动按下" + _.globalPosition.toString();
            });
          },
          onHorizontalDragStart: (_) {
            setState(() {
              this._message = "水平方向拖动开始" + _.globalPosition.toString();
            });
          },
          onHorizontalDragUpdate: (_) {
            setState(() {
              this._message = "水平方向拖动更新" + _.globalPosition.toString();
            });
          },
          onHorizontalDragCancel: () {
            setState(() {
              this._message = "水平方向拖动取消";
            });
          },
          onHorizontalDragEnd: (_) {
            setState(() {
              this._message = "水平方向拖动结束";
            });
          },
          child: Dismissible(
            key: Key(''),
            onDismissed: (direction) {
              print(direction);
            },
            background: Container(
                color: Colors.red,
                child: Center(
                  child: Text(
                    "删除",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            secondaryBackground: Container(
              color: Colors.green,
            ),
            child: Container(
              width: 567,
              height: 567,
              decoration: BoxDecoration(
                  border: Border.all(width: 8, color: Colors.black45)),
              child: Center(
                child: Text(this._message, style: TextStyle(fontSize: 56)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
