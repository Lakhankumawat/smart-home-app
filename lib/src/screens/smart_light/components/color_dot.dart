import 'package:domus/view/smart_light_view_model.dart';
import 'package:flutter/material.dart';

Widget ColorDot(
    {required BuildContext context,
    required bool isSelected,
    required Color dotColor,
    required int index,
    required SmartLightViewModel model}) {
  return GestureDetector(
    onTap: () {
      model.changeColor(currentIndex: index);
    },
    child: Container(
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
    ),
  );
}
