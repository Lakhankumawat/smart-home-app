import 'package:domus/src/screens/edit_profile/edit_profile.dart';
import 'package:domus/src/screens/smart_ac/smart_ac.dart';
import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:domus/src/screens/smart_speaker/smart_speaker.dart';
import 'package:domus/src/screens/smart_fan/smart_fan.dart';
import 'package:domus/src/screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:domus/src/screens/home_screen/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SmartLight.routeName: (context) => SmartLight(),
  SplashScreen.routeName: (context) => SplashScreen(),
  SmartAC.routeName: (context) => SmartAC(),
  SmartSpeaker.routeName: (context) => SmartSpeaker(),
  SmartFan.routeName: (context) => SmartFan(),
  EditProfile.routeName: (context) => EditProfile(),
};
