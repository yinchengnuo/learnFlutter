import 'package:flutter/material.dart';

class Tabwidgets extends StatefulWidget {
  Tabwidgets({Key key}) : super(key: key);

  @override
  _TabwidgetsState createState() => _TabwidgetsState();
}

class _TabwidgetsState extends State<Tabwidgets> with AutomaticKeepAliveClientMixin {
  final List<Map> routerList = [
    {'name': 'Icon 组件', 'routeName': '/icon'},
    {'name': '动画', 'routeName': '/animation'},
    {'name': 'Swiper 组件', 'routeName': '/swiper'},
    {'name': '手势事件', 'routeName': '/screenevent'},
    {'name': '切换主题', 'routeName': '/switchtheme'},
    {'name': 'inkwell 组件', 'routeName': '/inkwell'},
    {'name': 'pageview 组件', 'routeName': '/pageview'},
    {'name': '视频播放 组件', 'routeName': '/videoplay'},
    {'name': 'request 网络请求', 'routeName': '/request'},
    {'name': 'Container 组件', 'routeName': '/container'},
    {'name': 'provider 状态管理', 'routeName': '/provider'},
    {'name': 'TabController 组件', 'routeName': '/tabcontroller'},
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final double rpx = MediaQuery.of(context).size.width / 750;

    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text('Flutter 组件列表'),
        ),
        preferredSize: Size.fromHeight(128 * rpx),
      ),
      body: Wrap(
        children: this.routerList.map((item) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            child: RaisedButton(
              child: Text(item['name']),
              onPressed: () {
                Navigator.pushNamed(context, item['routeName']);
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
