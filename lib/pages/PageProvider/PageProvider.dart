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
  ProviderApp _$app;
  ProviderDevice _$device;

  List<Widget> _pageList = [Tab1(), Tab2(), Tab3(), Tab4()];
  PageController _pageController = PageController();

  @override
  void dispose() {
    super.dispose();
    // 组件销毁后，通知 provider 清除数据
    this._$device.clear();
    this._$app.switchPageProviderTabIndex(0, notify: false);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderApp()),
        ChangeNotifierProvider(create: (_) => ProviderDevice()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider 状态管理'),
        ),
        body: Consumer2<ProviderApp, ProviderDevice>(
          builder: (BuildContext context, ProviderApp _$app, ProviderDevice _$device, Widget child) {
            this._$app = _$app;
            this._$device = _$device;
            return PageView(
              children: this._pageList,
              controller: this._pageController,
              physics: NeverScrollableScrollPhysics(),
            );
          },
        ),
        bottomNavigationBar: Consumer<ProviderApp>(
          builder: (BuildContext context, ProviderApp _$app, Widget child) {
            return BottomNavigationBar(
              currentIndex: _$app.pageProviderTabIndex,
              onTap: (index) {
                this._pageController.jumpToPage(index);
                _$app.switchPageProviderTabIndex(index);
              },
              type: BottomNavigationBarType.fixed,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('首页'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.change_history),
                  title: Text('频道'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.fast_forward),
                  title: Text('动态'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.battery_alert),
                  title: Text('周边'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
