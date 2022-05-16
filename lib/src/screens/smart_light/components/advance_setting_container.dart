import 'package:flutter/material.dart';

Widget AdvanceSettings({required BuildContext context}) {
  return Container(
    height: 55,
    width: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(
        color: Color(0xFFBDBDBD),
        width: 2,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Tone & intensity',
            style: Theme.of(context).textTheme.headline2,
          ),
          Icon(Icons.arrow_forward_ios_outlined)
        ],
      ),
    ),
  );
}
