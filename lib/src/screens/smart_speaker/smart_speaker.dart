import 'package:flutter/material.dart';
import 'components/body.dart';

class SmartSpeaker extends StatelessWidget {
  static String routeName = 'smart-speaker';
  const SmartSpeaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: Body(),
    );
  }
}
