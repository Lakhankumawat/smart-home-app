import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  static String routeName = '/about-us';
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: new Image.asset(
        "assets/images/about_us.png",
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }
}
