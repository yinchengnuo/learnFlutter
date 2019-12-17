import '../pages/404/404.dart';
import 'package:flutter/material.dart';
import '../pages/IconPage/IconPage.dart';
import '../pages/SwiperPage/SwiperPage.dart';
import '../pages/InkWellPage/InkWellPage.dart';
import '../pages/RequestPage/RequestPage.dart';
import '../pages/SwitchTheme/SwitchTheme.dart';
import '../pages/VideoplayPage/VideoplayPage.dart';
import '../pages/ContainerPage/ContainerPage.dart';
import '../pages/ScreenEventPage/ScreenEventPage.dart';
import '../pages/TabControllerPage/TabControllerPage.dart';

Map routes = <String, WidgetBuilder> { // 路由表
  '/icon': (ctx) => IconPage(), // icon 组件页面
  '/swiper': (ctx) => SwiperPage(), // tabcontroller 组件页面
  '/request': (ctx) => RequestPage(), // request 网络请求页面
  '/inkwell': (ctx) => InkWellPage(), // inkwell 组件页面
  '/404': (ctx) => UndefinedRoutePage(), // 404 路由未定义页面
  '/switchtheme': (ctx) => SwitchTheme(), // 切换主题 页面
  '/container': (ctx) => ContainerPage(), // container 组件页面
  '/videoplay': (ctx) => VideoplayPage(), // 视频播放 组件页面
  '/screenevent': (ctx) => ScreenEventPage(), // 事件处理 页面
  '/tabcontroller': (ctx) => TabControllerPage(), // tabcontroller 组件页面
};