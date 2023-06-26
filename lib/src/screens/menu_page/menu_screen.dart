import 'package:flutter/material.dart';

import 'package:domus/src/screens/menu_page/components/body.dart';

class Menu extends StatelessWidget {
  static String routeName = '/menu-screen';
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Body(),
      ),
    );
  }
}

