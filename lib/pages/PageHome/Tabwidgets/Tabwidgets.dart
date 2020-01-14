import 'package:flutter/material.dart';
import '../../../provider/ProviderApp.dart';
import '../../../provider/ProviderDevice.dart';
import '../../PageRouteAnimation/PageRouteAnimation.dart';

class Tabwidgets extends StatefulWidget {
  Tabwidgets({Key key}) : super(key: key);

  @override
  _TabwidgetsState createState() => _TabwidgetsState();
}

class _TabwidgetsState extends State<Tabwidgets> with AutomaticKeepAliveClientMixin {
  final double rpx = ProviderDevice().rpx;

  final List<Map> routerList = [
    {'name': 'Icon 图标', 'routeName': '/icon'},
    {'name': 'Flow 自定义布局', 'routeName': '/flow'},
    {'name': 'Stream 流', 'routeName': '/stream'},
    {'name': 'Camera 相机', 'routeName': '/camera'},
    {'name': 'Dio 网络请求', 'routeName': '/request'},
    {'name': 'Swiper 轮播图', 'routeName': '/swiper'},
    {'name': 'Timer 定时器', 'routeName': '/timeout'},
    {'name': 'FFmpeg 音视频', 'routeName': '/ffmpeg'},
    {'name': 'Inkwell 水波纹', 'routeName': '/inkwell'},
    {'name': 'Video 视频播放', 'routeName': '/videoplay'},
    {'name': 'Container 容器', 'routeName': '/container'},
    {'name': 'Animation 动画', 'routeName': '/animation'},
    {'name': 'Pageview 页面容器', 'routeName': '/pageview'},
    {'name': 'Provider 状态管理', 'routeName': '/provider'},
    {'name': 'Theme 切换主题', 'routeName': '/switchtheme'},
    {'name': 'Waterfall 瀑布流', 'routeName': '/waterfall'},
    {'name': 'Listener 手势事件', 'routeName': '/screenevent'},
    {'name': 'RouteAnimation 路由动画', 'routeName': PageRouteAnimation()},
    {'name': 'BottomNavigationBar 自定义底部导航栏', 'routeName': '/custom'},
  ];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          title: Text('Flutter 组件列表'),
        ),
        preferredSize: Size.fromHeight(98 * rpx),
      ),
      body: SingleChildScrollView(
        child: Wrap(
          children: this.routerList.map((item) {
            return Container(
              margin: EdgeInsets.only(left: 10),
              child: RaisedButton(
                child: Text(item['name']),
                onPressed: () {
                  if (item['routeName'] is String) {
                    Navigator.pushNamed(context, item['routeName']);
                  } else {
                    Navigator.of(context).push(CustomRoute(item['routeName']));
                  }
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

class CustomRoute extends PageRouteBuilder {
  final Widget widget;

  CustomRoute(this.widget)
      : super(
            // 设置过度时间
            transitionDuration: Duration(seconds: 1),
            // 构造器
            pageBuilder: (
              // 上下文和动画
              BuildContext context,
              Animation<double> animaton1,
              Animation<double> animaton2,
            ) {
              return widget;
            },
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animaton1,
              Animation<double> animaton2,
              Widget child,
            ) {
              // 需要什么效果把注释打开就行了
              // 渐变效果
              // return FadeTransition(
              //   // 从0开始到1
              //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
              //     // 传入设置的动画
              //     parent: animaton1,
              //     // 设置效果，快进漫出   这里有很多内置的效果
              //     curve: Curves.fastOutSlowIn,
              //   )),
              //   child: child,
              // );

              // 缩放动画效果
              // return ScaleTransition(
              //   scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
              //     parent: animaton1,
              //     curve: Curves.fastOutSlowIn
              //   )),
              //   child: child,
              // );

              // 旋转加缩放动画效果
              return RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
                  parent: animaton1,
                  curve: Curves.fastOutSlowIn,
                )),
                child: ScaleTransition(
                  scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animaton1, curve: Curves.fastOutSlowIn)),
                  child: child,
                ),
              );

              // 左右滑动动画效果
              // return SlideTransition(
              //   position: Tween<Offset>(
              //     // 设置滑动的 X , Y 轴
              //     begin: Offset(-1.0, 0.0),
              //     end: Offset(0.0,0.0)
              //   ).animate(CurvedAnimation(
              //     parent: animaton1,
              //     curve: Curves.fastOutSlowIn
              //   )),
              //   child: child,
              // );
            });
}
