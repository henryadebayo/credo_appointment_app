import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  Future<T?>? navigateToNamed<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<T?>? navigateOffNamed<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) {
    return navigatorKey.currentState?.pushReplacementNamed(
      routeName,
      result: result,
      arguments: arguments,
    );
  }

  dynamic pop() {
    return navigatorKey.currentState!.pop();
  }

  Future<dynamic> showDialogue(Widget child) {
    return showDialog(
        context: navigatorKey.currentContext!, builder: (context) => child);
  }
}
