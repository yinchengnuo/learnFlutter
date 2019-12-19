import 'TabHome.dart';
import 'TabList.dart';
import 'TabTabbar.dart';
import 'TabVideo.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // 有状态组件本体
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 有状态组件的状态部分

  int _pageViewIndex = 0; // 首页默认 tab 项
  List _bottomNavigationBarCurrentItemsList = <Widget>[
    TabHome(),
    TabTabbar(),
    TabVideo(),
    TabList()
  ];

  @override
  Widget build(BuildContext context) {
    // 有状态组件的 UI 构建是在有状态组件的状态部分构建的

    final int bottomNavigationBarHeight = 98; // 底部导航栏高度
    final double rpx = MediaQuery.of(context).size.width / 750; // 适配单位宽度
    final double _bottomNavigationBarItemsIconWidth = 38 * rpx; // Icon 宽

    List _bottomNavigationBarItems = <Map>[
      {
        'title': '首页',
        'icon': 'lib/images/homepage/home.png',
        'selectedIcon': 'lib/images/homepage/home-fill.png',
      },
      {
        'title': '直播',
        'icon': 'lib/images/homepage/live.png',
        'selectedIcon': 'lib/images/homepage/live-fill.png'
      },
      {
        'title': '小视频',
        'icon': 'lib/images/homepage/video.png',
        'selectedIcon': 'lib/images/homepage/video-fill.png',
      },
      {
        'title': '组件列表',
        'icon': 'lib/images/homepage/list.png',
        'selectedIcon': 'lib/images/homepage/list-fill.png',
      }
    ];

    return Scaffold(
      // Scaffold 是 Material 库中提供的页面脚手架，它提供了默认的导航栏、标题和包含主屏幕widget树的body属性等
      // body: this._bottomNavigationBarCurrentItemsList[this._pageViewIndex], // 页面内容部分
      body: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: double.infinity,
                child: this._bottomNavigationBarCurrentItemsList[
                    this._pageViewIndex],
                padding: this._pageViewIndex == 2
                    ? EdgeInsets.only(bottom: 0)
                    : EdgeInsets.only(bottom: bottomNavigationBarHeight * rpx),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: bottomNavigationBarHeight * rpx,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(
                              width: 1 * rpx, color: Colors.black45))),
                  child: Row(
                    children: _bottomNavigationBarItems
                        .map((item) => Expanded(
                              child: InkWell(
                                onTapDown: (d) {},
                                onTap: () {
                                  setState(() {
                                    _pageViewIndex =
                                        _bottomNavigationBarItems.indexOf(item);
                                  });
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ImageIcon(
                                      _bottomNavigationBarItems.indexOf(item) ==
                                              _pageViewIndex
                                          ? AssetImage(item['selectedIcon'])
                                          : AssetImage(item['icon']),
                                      size: _bottomNavigationBarItemsIconWidth,
                                      color: _bottomNavigationBarItems
                                                  .indexOf(item) ==
                                              _pageViewIndex
                                          ? Theme.of(context).accentColor
                                          : Theme.of(context)
                                              .textTheme
                                              .button
                                              .color,
                                    ),
                                    Text(
                                      item['title'],
                                      style: TextStyle(
                                          fontSize: 22 * rpx,
                                          color: _bottomNavigationBarItems
                                                      .indexOf(item) ==
                                                  _pageViewIndex
                                              ? Theme.of(context).accentColor
                                              : Theme.of(context)
                                                  .textTheme
                                                  .button
                                                  .color),
                                    )
                                  ],
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
