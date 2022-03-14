import 'package:domus/src/models/color_model.dart';
import 'package:flutter/material.dart';

///Constants for custom dialog widget
class Constants {
  Constants._();
  static const double padding = 20;
  static const double avatarRadius = 45;

  static List<Color> dotColors1 = [
    const Color(0xFF9659D4),
    const Color(0xFF6EADFC),
    const Color(0xFFFF427D),
    const Color(0xFF61D1EB),
    const Color(0xFFFF4C4B),
  ];

  static List<ColorModel> colors = [
    ColorModel(
        color: const Color(0xFF9659D4),
        image: 'assets/images/purple.png',
        index: 0),
    ColorModel(
        color: const Color(0xFF6EADFC),
        image: 'assets/images/blue.png',
        index: 1),
    ColorModel(
        color: const Color(0xFFFF427D),
        image: 'assets/images/pink.png',
        index: 2),
    ColorModel(
        color: const Color(0xFF61D1EB),
        image: 'assets/images/sky_blue.png',
        index: 3),
    ColorModel(
        color: const Color(0xFFFF4C4B),
        image: 'assets/images/orange.png',
        index: 4),
  ];

  static List<Color> dotColors2 = [
    const Color(0xFFEFF0FB),
    const Color(0xFFFCAE39),
    const Color(0xFF6FB86D),
    const Color(0xFF7054FF),
    const Color(0xFFFFF35C),
  ];
}
