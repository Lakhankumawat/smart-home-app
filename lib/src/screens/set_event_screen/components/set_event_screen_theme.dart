import 'package:flutter/material.dart';

abstract class SetEventScreenTheme {
  static TextStyle get appBarTextStyle {
    return const TextStyle(
      fontFamily: 'ABeeZee',
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.w500,
    );
  }
}
