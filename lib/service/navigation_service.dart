import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future navigateTo(String routeName,
      {Object? arguments, bool withreplacement = false}) {
    if (withreplacement) {
      return navigatorKey.currentState!.pushNamedAndRemoveUntil(
          routeName, (route) => false,
          arguments: arguments);
    } else {
      return navigatorKey.currentState!
          .pushNamed(routeName, arguments: arguments);
    }
  }

  bool pop({required String routeName, Object? argument}) {
    navigatorKey.currentState!.pop();

    return true;
  }
}
