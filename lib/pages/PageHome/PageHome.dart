import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderApp.dart';
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
  int _nowIndex;
  PageController _pageController = PageController();
  

  onpageChange(index) {
    setState(() {
      this._pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    this._nowIndex = Provider.of<ProviderApp>(context).pageHomeTabIndex;
    List<Widget> _pageList = [TabHome(), TabLive(), TabVideo(isShow: this._nowIndex == 2), Tabwidgets()];

    return Scaffold(
      body: Builder(
        builder: (BuildContext context) {
          return Stack(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: PageView(
                    children: _pageList,
                    controller: this._pageController,
                    physics: NeverScrollableScrollPhysics(),
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Tabbar(onpageChange: this.onpageChange),
              )
            ],
          );
        },
      ),
    );
  }
}
