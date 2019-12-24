import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderApp.dart';

class Tabbar extends StatelessWidget {
  final onpageChange;
  Tabbar({this.onpageChange});

  final List _tabList = <Map>[
    {
      'title': '首页',
      'icon': 'lib/images/pagehome/home.png',
      'selectedIcon': 'lib/images/pagehome/home-fill.png',
    },
    {
      'title': '直播',
      'icon': 'lib/images/pagehome/live.png',
      'selectedIcon': 'lib/images/pagehome/live-fill.png',
    },
    {
      'title': '小视频',
      'icon': 'lib/images/pagehome/video.png',
      'selectedIcon': 'lib/images/pagehome/video-fill.png',
    },
    {
      'title': 'Widgets',
      'icon': 'lib/images/pagehome/widget.png',
      'selectedIcon': 'lib/images/pagehome/widget-fill.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final double rpx = MediaQuery.of(context).size.width / 750; // 适配单位宽度
    final double iconWidth = 38 * rpx; // Icon 宽
    final Color activeColor = Theme.of(context).accentColor;
    final Color defaultColor = Theme.of(context).textTheme.button.color;

    precacheImage(AssetImage('lib/images/pagehome/home.png'), context);
    precacheImage(AssetImage('lib/images/pagehome/live.png'), context);
    precacheImage(AssetImage('lib/images/pagehome/video.png'), context);
    precacheImage(AssetImage('lib/images/pagehome/widget.png'), context);
    precacheImage(AssetImage('lib/images/pagehome/home-fill.png'), context);
    precacheImage(AssetImage('lib/images/pagehome/live-fill.png'), context);
    precacheImage(AssetImage('lib/images/pagehome/video-fill.png'), context);
    precacheImage(AssetImage('lib/images/pagehome/widget-fill.png'), context);

    return Consumer<ProviderApp>(
      builder: (BuildContext context, ProviderApp _$app, Widget child) => Container(
        height: _$app.pageHomeTabHeight * rpx,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(width: 1 * rpx, color: Colors.black45)),
        ),
        child: Row(
          children: this
              ._tabList
              .map(
                (item) => Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        this.onpageChange(this._tabList.indexOf(item));
                        _$app.switchPageHomeTabIndex(this._tabList.indexOf(item));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ImageIcon(
                            this._tabList.indexOf(item) == _$app.pageHomeTabIndex
                                ? AssetImage(item['selectedIcon'])
                                : AssetImage(item['icon']),
                            size: iconWidth,
                            color: this._tabList.indexOf(item) == _$app.pageHomeTabIndex ? activeColor : defaultColor,
                          ),
                          Text(
                            item['title'],
                            style: TextStyle(
                                fontSize: 22 * rpx,
                                color: this._tabList.indexOf(item) == _$app.pageHomeTabIndex ? activeColor : defaultColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
