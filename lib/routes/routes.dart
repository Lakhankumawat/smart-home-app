import 'package:domus/src/screens/set_event_screen/set_event_screen.dart';
import 'package:domus/src/screens/edit_profile/edit_profile.dart';
import 'package:domus/src/screens/login_screen/login_screen.dart';
import 'package:domus/src/screens/settings_screen/settings_screen.dart';
import 'package:domus/src/screens/smart_ac/smart_ac.dart';
import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:domus/src/screens/smart_speaker/smart_speaker.dart';
import 'package:domus/src/screens/smart_fan/smart_fan.dart';
import 'package:domus/src/screens/splash_screen/splash_screen.dart';
import 'package:domus/src/screens/stats_screen/stats_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:domus/src/screens/home_screen/home_screen.dart';
import 'package:domus/src/screens/my_list_screen/my_list_screen.dart';
import 'package:domus/src/screens/savings_screen/savings_screen.dart';
import 'package:domus/src/screens/smart_tv/smart_tv.dart';

// Routes arranged in ascending order

final Map<String, WidgetBuilder> routes = {
  EditProfile.routeName: (context) => const EditProfile(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  SavingsScreen.routeName: (context) => const SavingsScreen(),
  SetEventScreen.routeName: (context) => const SetEventScreen(),
  SettingScreen.routeName: (context) => const SettingScreen(),
  SmartAC.routeName: (context) => const SmartAC(),
  SmartFan.routeName: (context) => const SmartFan(),
  SmartTV.routeName: (context) => const SmartTV(),
  SmartLight.routeName: (context) => const SmartLight(),
  SmartSpeaker.routeName: (context) => const SmartSpeaker(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  StatsScreen.routeName: (context) => const StatsScreen(),
  MyListScreen.routeName: (context) => const MyListScreen()
};
