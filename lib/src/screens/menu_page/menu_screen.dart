import 'package:flutter/material.dart';

import '../menu_page/components/body.dart';

class Menu extends StatelessWidget {
  static String routeName = '/menu-screen';
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: const Scaffold(
          backgroundColor: Color(0xFFF2F2F2),
          body: Body(),
        ),
      ),
    );
  }
}
