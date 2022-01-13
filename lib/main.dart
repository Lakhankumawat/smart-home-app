import 'package:domus/provider/getit.dart';
import 'package:domus/routes/routes.dart';
import 'package:domus/service/navigation_service.dart';
import 'package:domus/src/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.system;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lossy',
      navigatorKey: getIt<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      routes: routes,
      home: HomeScreen(),
    );
  }
}

///---------------Build Release Apk----------------///
///flutter build apk --build-name=1.0.x --build-number=x
