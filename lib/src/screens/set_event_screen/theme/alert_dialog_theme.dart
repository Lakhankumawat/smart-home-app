import 'package:flutter/material.dart';

abstract class AlertDialogTheme {
  static TextStyle get appBarTextStyle {
    return TextStyle(
      fontFamily: 'ABeeZee',
      color: Colors.black,
      fontSize: 36,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle get buttonTextStyle {
    return TextStyle(
      fontFamily: 'ABeeZee',
      color: Colors.black,
    );
  }

  static TextStyle get titleTextStyle {
    return TextStyle(
      fontFamily: 'ABeeZee',
      color: Colors.black,
      fontSize: 16,
    );
  }

  static TextStyle get textFieldStyle {
    return TextStyle(
      fontFamily: 'ABeeZee',
      color: Colors.black,
      fontSize: 14,
    );
  }
}
