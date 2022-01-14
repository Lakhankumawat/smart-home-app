import 'package:flutter/material.dart';

Widget ColorDot(
    {required BuildContext context,
    required bool isSelected,
    required Color dotColor}) {
  return Container(
    height: 22,
    width: 22,
    margin: EdgeInsets.symmetric(vertical: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: isSelected ? dotColor : Colors.white,
      border: Border.all(
        color: dotColor,
        width: 3,
      ),
    ),
  );
}
