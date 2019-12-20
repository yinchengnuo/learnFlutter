import 'package:flutter/material.dart';
import 'AnimationWithoutWidgets.dart';

class PageAnimation extends StatefulWidget {
  PageAnimation({Key key}) : super(key: key);

  @override
  _PageAnimationState createState() => _PageAnimationState();
}

class _PageAnimationState extends State<PageAnimation> {
  int _animationListIndex = 0;
  List<Map> _animationList = [
    {'name': '无组件动画', 'widget': AnimationWithoutWidgets()}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('动画'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Center(
              child: this._animationList[this._animationListIndex]['widget'],
            ),
          ),
          Container(
            width: double.infinity,
            child: Wrap(
              children: this
                  ._animationList
                  .map(
                    (item) => Container(
                      margin: EdgeInsets.only(left: 10),
                      child: RaisedButton(child: Text(item['name']), onPressed: () {
                        setState(() {
                          this._animationListIndex = this._animationList.indexOf(item);
                        });
                      }),
                    ),
                  )
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
