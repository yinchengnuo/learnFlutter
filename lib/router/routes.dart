import '../pages/404/404.dart';
import 'package:flutter/material.dart';
import '../pages/SwiperPage/SwiperPage.dart';
import '../pages/ContainerPage/ContainerPage.dart';
import '../pages/TabControllerPage/TabControllerPage.dart';

Map routes = <String, WidgetBuilder> { // 路由表
  '/swiper': (ctx) => SwiperPage(), // tabcontroller 组件页面
  '/404': (ctx) => UndefinedRoutePage(), // 404 路由未定义页面
  '/container': (ctx) => ContainerPage(), // container 组件页面
  '/tabcontroller': (ctx) => TabControllerPage(), // tabcontroller 组件页面
};