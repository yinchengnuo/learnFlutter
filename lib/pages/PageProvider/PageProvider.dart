import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/ProviderApp.dart';
import '../../provider/ProviderDevice.dart';
import 'Tab1.dart';
import 'Tab2.dart';
import 'Tab3.dart';
import 'Tab4.dart';

class PageProvider extends StatefulWidget {
  PageProvider({Key key}) : super(key: key);

  @override
  _PageProviderState createState() => _PageProviderState();
}

class _PageProviderState extends State<PageProvider> {
  List<Widget> _pageList = [
    Tab1(),
    Tab2(),
    Tab3(),
    Tab4(),
  ];
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    Provider.of<ProviderDevice>(this.context).clear();

    return Scaffold(
      appBar: AppBar(
        title: Text('Provider 状态管理'),
      ),
      body: PageView(
        children: this._pageList,
        controller: this._pageController,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Provider.of<ProviderApp>(context).pageProviderTabIndex,
        onTap: (index) {
          this._pageController.jumpToPage(index);
          setState(() {
            Provider.of<ProviderApp>(context).switchPageProviderTabIndex(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
          BottomNavigationBarItem(
              icon: Icon(Icons.change_history), title: Text('频道')),
          BottomNavigationBarItem(
              icon: Icon(Icons.fast_forward), title: Text('动态')),
          BottomNavigationBarItem(
              icon: Icon(Icons.battery_alert), title: Text('周边')),
        ],
      ),
    );
  }
}
