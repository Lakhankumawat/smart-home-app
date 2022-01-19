import 'package:domus/src/screens/smart_speaker/components/connect_speaker.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: ConnectSpeaker());
  }
}
