import 'package:flutter/material.dart';
import 'pages/HomePage/HomePage.dart';
import 'router/routes.dart';
import 'router/onGenerateRoute.dart';
// import 'pages/ContainerPage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // 
      title: 'Flutter APP', // 在任务管理窗口中所显示的应用名字 <String>
      theme: ThemeData( // 应用各种 UI 所使用的主题颜色
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(), // 应用默认所显示的界面 <Widget>
      home: HomePage(), // 应用默认所显示的界面 <Widget>
      routes: routes, // 路由表
      onGenerateRoute: onGenerateRoute, // 全局路由守卫i，用于使用命名路由时传参
    );
  }
}


