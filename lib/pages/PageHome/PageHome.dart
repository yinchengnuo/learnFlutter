import 'package:flutter/material.dart';
import 'Tabbar.dart';
import 'TabHome.dart';
import 'TabLive.dart';
import 'TabVideo.dart';
import 'Tabwidgets.dart';

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
                this._pageController.jumpToPage(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}
