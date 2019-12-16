import 'routes.dart';
import 'package:flutter/material.dart';

Route onGenerateRoute(RouteSettings settings) { // 全局路由守卫，用于使用命名路由时传参
  return MaterialPageRoute(builder: (ctx, { arguments }) => routes[settings.name](ctx, { arguments: settings.arguments ? settings.arguments : {} }));
}