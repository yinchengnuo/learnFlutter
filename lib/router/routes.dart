import 'package:flutter/material.dart';
import '../pages/PageHome/PageHome.dart';
import '../pages/Page404/Page404.dart';
import '../pages/PageIcon/PageIcon.dart';
import '../pages/PageFlow/PageFlow.dart';
import '../pages/PageCamera/PageCamera.dart';
import '../pages/PageSwiper/PageSwiper.dart';
import '../pages/PageStream/PageStream.dart';
import '../pages/PageInkWell/PageInkWell.dart';
import '../pages/PageRequest/PageRequest.dart';
import '../pages/PageTimeout/PageTimeout.dart';
import '../pages/PageProvider/PageProvider.dart';
import '../pages/PagePageview/PagePageview.dart';
import '../pages/PageWaterfall/PageWaterfall.dart';
import '../pages/PageAnimation/PageAnimation.dart';
import '../pages/PageVideoplay/PageVideoplay.dart';
import '../pages/PageContainer/PageContainer.dart';
import '../pages/PageScreenEvent/PageScreenEvent.dart';
import '../pages/PageSwitchTheme/PageSwitchTheme.dart';
import '../pages/PageRouteAnimation/PageRouteAnimation.dart';

Map routes = <String, WidgetBuilder> { // 路由表
  '/': (ctx) => PageHome(), // app 主页
  '/404': (ctx) => Page404(), // 404 路由未定义页面
  '/icon': (ctx) => PageIcon(), // icon 组件页面
  '/flow': (ctx) => PageFlow(), // 瀑布流 页面
  '/camera': (ctx) => PageCamera(), //相机 页面
  '/swiper': (ctx) => PageSwiper(), // tabcontroller 组件页面
  '/stream': (ctx) => PageStream(), // 流 页面
  '/timeout': (ctx) => PageTimeout(), // 定时器 页面
  '/request': (ctx) => PageRequest(), // request 网络请求页面
  '/inkwell': (ctx) => PageInkWell(), // inkwell 组件页面
  '/pageview': (ctx) => PagePageview(), // pgeeview 组件页面
  '/provider': (ctx) => PageProvider(), // provider 状态管理页面
  '/animation': (ctx) => PageAnimation(), // 动画页面
  '/waterfall': (ctx) => PageWaterfall(), // 瀑布流 页面
  '/container': (ctx) => PageContainer(), // container 组件页面
  '/videoplay': (ctx) => PageVideoplay(), // 视频播放 组件页面
  '/screenevent': (ctx) => PageScreenEvent(), // 事件处理 页面
  '/switchtheme': (ctx) => PageSwitchTheme(), // 切换主题 页面
  '/routeAnimation': (ctx) => PageRouteAnimation(), // 路由动画 页面
};