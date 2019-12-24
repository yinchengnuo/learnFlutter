import 'package:flutter/cupertino.dart';

List<NavigatorObserver> navigatorObservers = [
  ObserverPush(),
  ObserverPop()
];

class ObserverPush extends NavigatorObserver { // 监听 app 路由 push 行为
  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);
    // print('监听到路由 push ${route.settings.name}');
  }
}

class ObserverPop extends NavigatorObserver { // 监听 app 路由 pop 行为
  @override
  void didPop(Route route, Route previousRoute) {
    super.didPop(route, previousRoute);
    // print('监听到路由 pop ${route.settings.name}');
  }
}