import 'package:flutter/material.dart';

class TabControllerPage extends StatefulWidget {
  TabControllerPage({Key key}) : super(key: key);

  @override
  _TabControllerPageState createState() => _TabControllerPageState();
}

class _TabControllerPageState extends State<TabControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  List tabList = <String>['推荐', '热门', '魅力', '才艺', '同城', '官方', '游戏', '交友'];

  @override
  void initState() {
    super.initState();
    this._tabController = new TabController(
      vsync: this,
      length: this.tabList.length,
    );
    this._tabController.addListener(() {
      print(this._tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('TabController 组件'),
          bottom: TabBar(
            isScrollable: true,
            controller: this._tabController,
            labelPadding: EdgeInsets.fromLTRB(34, 0, 34, 0),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: this.tabList.map((title) {
              return Tab(
                child: Text(title, style: TextStyle(fontSize: 20)),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          controller: this._tabController,
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
