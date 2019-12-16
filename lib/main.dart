import 'router/routes.dart';
import 'router/onUnknownRoute.dart';
import 'router/onGenerateRoute.dart';
import 'pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'router/navigatorObservers.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {

    debugPaintSizeEnabled = false; // 是否进入布局调试模式

    return MaterialApp(
      title: 'Flutter APP', // 在任务管理窗口中所显示的应用名字 <String>
      theme: ThemeData(
        // 应用各种 UI 所使用的主题颜色
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(), // 应用默认所显示的界面 <Widget>
      home: HomePage(), // 应用默认所显示的界面 <Widget>
      routes: routes, // 路由表
      initialRoute: '/', // 首页路由
      onUnknownRoute: onUnknownRoute,
      onGenerateRoute: onGenerateRoute, // 全局路由守卫，用于使用命名路由时传参
      debugShowCheckedModeBanner: false, // 不显示 debug 图标
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [const Locale('zh', 'CH')],
      navigatorObservers: navigatorObservers, // 应用 Navigator 的监听器
    );
  }
}
