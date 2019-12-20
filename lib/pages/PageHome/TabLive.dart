import 'package:flutter/material.dart';

class TabLive extends StatefulWidget {
  TabLive({Key key}) : super(key: key);

  @override
  _TabLiveState createState() => _TabLiveState();
}

class _TabLiveState extends State<TabLive> with AutomaticKeepAliveClientMixin {
  List tabList = <String>['推荐', '热门', '魅力', '才艺', '同城', '官方', '游戏', '交友'];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: this.tabList.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar左右切换'),
          centerTitle: true,
          backgroundColor: Colors.pink,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print(123);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              },
            ),
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {
                print('share');
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: true, // tabbar 是否滚动
            indicatorWeight: 3, // 滑动指示器粗细
            indicatorColor: Colors.white, // 滑动指示器颜色
            indicatorSize: TabBarIndicatorSize.label, // 滑动指示器宽度
            labelPadding: EdgeInsets.fromLTRB(23, 0, 23, 0), // label padding
            indicatorPadding:
                EdgeInsets.fromLTRB(10, 0, 10, 0), // 滑动指示器 padding
            tabs: this.tabList.map((title) {
              return Tab(
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20),
                ),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: this.tabList.map((title) {
            return Center(
              child: Text(title, style: TextStyle(fontSize: 100)),
            );
          }).toList(),
        ),
      ),
    );
  }
}
