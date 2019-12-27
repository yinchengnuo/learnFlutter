import 'package:flutter/material.dart';
import '../../provider/ProviderApp.dart';

class Tabwidgets extends StatefulWidget {
  Tabwidgets({Key key}) : super(key: key);

  @override
  _TabwidgetsState createState() => _TabwidgetsState();
}

class _TabwidgetsState extends State<Tabwidgets> with AutomaticKeepAliveClientMixin {
  final List<Map> routerList = [
    {'name': 'Icon 图标', 'routeName': '/icon'},
    {'name': 'Flow 瀑布流', 'routeName': '/flow'},
    {'name': 'Stream 流', 'routeName': '/stream'},
    {'name': 'Camera 相机', 'routeName': '/camera'},
    {'name': 'Dio 网络请求', 'routeName': '/request'},
    {'name': 'Swiper 轮播图', 'routeName': '/swiper'},
    {'name': 'Timer 定时器', 'routeName': '/timeout'},
    {'name': 'Inkwell 水波纹', 'routeName': '/inkwell'},
    {'name': 'Video 视频播放', 'routeName': '/videoplay'},
    {'name': 'Container 容器', 'routeName': '/container'},
    {'name': 'Animation 动画', 'routeName': '/animation'},
    {'name': 'Pageview 页面容器', 'routeName': '/pageview'},
    {'name': 'Provider 状态管理', 'routeName': '/provider'},
    {'name': 'Theme 切换主题', 'routeName': '/switchtheme'},
    {'name': 'Listener 手势事件', 'routeName': '/screenevent'},
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final double rpx = MediaQuery.of(context).size.width / 750;

    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text('Flutter 组件列表'),
        ),
        preferredSize: Size.fromHeight(128 * rpx),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: this.routerList.map((item) {
            return Container(
              margin: EdgeInsets.only(left: 10),
              child: RaisedButton(
                child: Text(item['name']),
                onPressed: () {
                  Navigator.pushNamed(context, item['routeName']);
                },
              ),
            );
          }).toList(),
        ),
      ),
      bottomNavigationBar: Container(height: ProviderApp().pageHomeTabHeight * rpx),
    );
  }
}
