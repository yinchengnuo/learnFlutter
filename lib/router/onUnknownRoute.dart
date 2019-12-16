import 'routes.dart';
import 'package:flutter/material.dart';

Route onUnknownRoute(RouteSettings settings) {
  // 定位跳转到未知路由的行为
  return MaterialPageRoute(builder: (ctx) => routes['/404'](ctx));
}
