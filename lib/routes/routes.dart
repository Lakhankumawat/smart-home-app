import 'package:domus/src/screens/smart_ac/smart_ac.dart';
import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:domus/src/screens/smart_speaker/smart_speaker.dart';
import 'package:domus/src/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:domus/src/screens/home_screen/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SmartLight.routeName: (context) => SmartLight(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SmartAC.routeName: (context) => SmartAC(),
  SmartSpeaker.routeName: (context) => SmartSpeaker(),
};
