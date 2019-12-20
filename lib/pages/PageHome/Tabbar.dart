import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderApp.dart';

class Tabbar extends StatefulWidget {
  final onpageChange;
  Tabbar({Key key, this.onpageChange}) : super(key: key);

  @override
  _TabbarState createState() => _TabbarState(this.onpageChange);
}

class _TabbarState extends State<Tabbar> {
  final onpageChange;
  _TabbarState(this.onpageChange);

  List _tabList = <Map>[
    {
      'title': '首页',
      'icon': 'lib/images/pagehome/home.png',
      'selectedIcon': 'lib/images/pagehome/home-fill.png',
    },
    {
      'title': '直播',
      'icon': 'lib/images/pagehome/live.png',
      'selectedIcon': 'lib/images/pagehome/live-fill.png'
    },
    {
      'title': '小视频',
      'icon': 'lib/images/pagehome/video.png',
      'selectedIcon': 'lib/images/pagehome/video-fill.png',
    },
    {
      'title': '组件列表',
      'icon': 'lib/images/pagehome/list.png',
      'selectedIcon': 'lib/images/pagehome/list-fill.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    final double rpx = MediaQuery.of(context).size.width / 750; // 适配单位宽度
    final double iconWidth = 38 * rpx; // Icon 宽
    final Color activeColor = Theme.of(context).accentColor;
    final Color defaultColor = Theme.of(context).textTheme.button.color;
    final ProviderApp _$app = Provider.of<ProviderApp>(context);

    return Container(
      height: _$app.pageHomeTabHeight * rpx,
      decoration: BoxDecoration(
          border:
              Border(top: BorderSide(width: 1 * rpx, color: Colors.black45))),
      child: Row(
        children: _tabList
            .map((item) => Expanded(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTapDown: (d) {
                        print(d);
                      },
                      onTap: () {
                        setState(() {
                          this.onpageChange(this._tabList.indexOf(item));
                          _$app.switchPageHomeTabIndex(
                              this._tabList.indexOf(item));
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ImageIcon(
                            _tabList.indexOf(item) == _$app.pageHomeTabIndex
                                ? AssetImage(item['selectedIcon'])
                                : AssetImage(item['icon']),
                            size: iconWidth,
                            color:
                                _tabList.indexOf(item) == _$app.pageHomeTabIndex
                                    ? activeColor
                                    : defaultColor,
                          ),
                          Text(
                            item['title'],
                            style: TextStyle(
                                fontSize: 22 * rpx,
                                color: _tabList.indexOf(item) ==
                                        _$app.pageHomeTabIndex
                                    ? activeColor
                                    : defaultColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
