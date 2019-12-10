import '../pages/404/404.dart';
import 'package:flutter/material.dart';
import '../pages/ContainerPage/ContainerPage.dart';

Map routes = <String, WidgetBuilder> { // 路由表
  '/404': (ctx) => UndefinedRoutePage(), // 404 路由未定义页面
  '/container': (ctx) => ContainerPage(), // container 组件页面
};