import 'routes.dart';
import 'package:flutter/material.dart';

Route onGenerateRoute(RouteSettings settings) { // 全局路由守卫i，用于使用命名路由时传参
  final Function is404 = routes['/404'];
  final Function route = routes[settings.name];
  if (route == null) {
    return MaterialPageRoute(builder: (ctx) => is404(ctx));
  } else {
    return MaterialPageRoute(builder: (ctx, { arguments }) => route(ctx, { arguments: settings.arguments ? settings.arguments : {} }));
  }
}