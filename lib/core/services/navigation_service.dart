import 'package:flutter/material.dart';

/// Minimal navigation service that exposes a central [navigatorKey] and a few
/// convenience helpers. Add more navigation helpers as needed by the app.
class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BuildContext? get currentContext => navigatorKey.currentContext;

  Future<T?> pushNamed<T extends Object?>(String routeName,
      {Object? arguments}) {
    return navigatorKey.currentState!
        .pushNamed<T>(routeName, arguments: arguments);
  }

  void pop<T extends Object?>([T? result]) {
    navigatorKey.currentState?.pop<T>(result);
  }
}
