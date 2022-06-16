import 'package:flutter/material.dart';

import 'package:domus/src/screens/savings_screen/components/body.dart';

class SavingsScreen extends StatelessWidget {
  static String routeName = '/savings-screen';
  const SavingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: const Scaffold(
          backgroundColor: Color(0xFFF2F2F2),
          body: Body(),
        ),
    );
  }
}
