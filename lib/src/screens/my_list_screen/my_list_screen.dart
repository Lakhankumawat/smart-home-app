import 'package:flutter/material.dart';

import '../my_list_screen/components/body.dart';


class MyListScreen extends StatelessWidget {
  static String routeName = '/my-list-screen';
  const MyListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        body: Body(),
    );
  }
}