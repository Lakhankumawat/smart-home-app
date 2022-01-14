import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:flutter/cupertino.dart';
import 'package:domus/src/screens/home_screen/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SmartLight.routeName: (context) => SmartLight(),
};
