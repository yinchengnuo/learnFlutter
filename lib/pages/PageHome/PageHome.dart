import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Tabbar.dart';
import 'TabHome/TabHome.dart';
import 'TabLive/TabLive.dart';
import 'TabVideo/TabVideo.dart';
import 'Tabwidgets/Tabwidgets.dart';
import '../../provider/ProviderDevice.dart';

class PageHome extends StatefulWidget {
  PageHome({Key key}) : super(key: key);
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  PageController _pageController = PageController();
  List<Widget> _pageList = [TabHome(), TabLive(), TabVideo(), Tabwidgets()];

  @override
  Widget build(BuildContext context) {
    ProviderDevice().media = MediaQuery.of(context); // 获取屏幕适配信息
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(statusBarColor: Theme.of(context).accentColor));
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: PageView(
              children: this._pageList,
              controller: this._pageController,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Tabbar(
              onpageChange: (index) {
                // this._pageController.animateToPage(index, duration: Duration(milliseconds: 123), curve: Curves.linear);
                this._pageController.jumpToPage(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
