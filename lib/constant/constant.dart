import 'package:domus/src/models/color_model.dart';
import 'package:flutter/material.dart';

///Constants for custom dialog widget
class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;

  static List<Color> dotColors1 = [
    Color(0xFF9659D4),
    Color(0xFF6EADFC),
    Color(0xFFFF427D),
    Color(0xFF61D1EB),
    Color(0xFFFF4C4B),
  ];

  static List<ColorModel> colors = [
    ColorModel(
        color: Color(0xFF9659D4), image: 'assets/images/purple.png', index: 0),
    ColorModel(
        color: Color(0xFF6EADFC), image: 'assets/images/blue.png', index: 1),
    ColorModel(
        color: Color(0xFFFF427D), image: 'assets/images/pink.png', index: 2),
    ColorModel(
        color: Color(0xFF61D1EB),
        image: 'assets/images/sky_blue.png',
        index: 3),
    ColorModel(
        color: Color(0xFFFF4C4B), image: 'assets/images/orange.png', index: 4),
  ];

  static List<Color> dotColors2 = [
    Color(0xFFEFF0FB),
    Color(0xFFFCAE39),
    Color(0xFF6FB86D),
    Color(0xFF7054FF),
    Color(0xFFFFF35C),
  ];
}
