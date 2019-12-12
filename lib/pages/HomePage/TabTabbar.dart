import 'package:flutter/material.dart';

class TabTabbar extends StatefulWidget {
  TabTabbar({Key key}) : super(key: key);

  @override
  _TabTabbarState createState() => _TabTabbarState();
}

class _TabTabbarState extends State<TabTabbar> {

  List tabList = <String> ['推荐', '热门', '魅力', '才艺', '同城', '官方', '游戏', '交友'];

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
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.label,
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
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 100
                )
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
