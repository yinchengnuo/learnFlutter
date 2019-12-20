import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'provider/ProviderApp.dart';
import 'provider/ProviderDevice.dart';

import 'router/routes.dart';
import 'router/onUnknownRoute.dart';
import 'router/onGenerateRoute.dart';
import 'router/navigatorObservers.dart';

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

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderApp()),
        ChangeNotifierProvider(create: (_) => ProviderDevice())
      ],
      child: MaterialApp(
        title: 'Flutter APP', // 在任务管理窗口中所显示的应用名字 <String>
        theme: ThemeData(
          // 应用各种 UI 所使用的主题颜色
          primarySwatch: Colors.blue,
        ),
        // home: HomePage(), // 应用默认所显示的界面 <Widget>
        routes: routes, // 路由表
        initialRoute: '/', // 首页路由
        onUnknownRoute: onUnknownRoute, // 未知路由处理方法
        onGenerateRoute: onGenerateRoute, // 全局路由守卫，用于使用命名路由时传参
        debugShowCheckedModeBanner: false, // 不显示 debug 图标
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [const Locale('zh', 'CH')], // 使用中文语言包
        navigatorObservers: navigatorObservers, // 应用 Navigator 的监听器
      ),
    );
  }
}
