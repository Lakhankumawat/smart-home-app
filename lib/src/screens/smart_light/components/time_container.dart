import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

Widget TimeContainer(
    {required BuildContext context,
    required String time,
    required String meridiem,
    required bool active}) {
  return Container(
    height: getProportionateScreenHeight(30),
    width: getProportionateScreenWidth(115),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: active ? Color(0xFF464646) : Color(0xFFBDBDBD),
        width: 2,
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          time,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: active ? Color(0xFF464646) : Color(0xFFBDBDBD)),
        ),
        VerticalDivider(
          thickness: 2,
          color: active ? Color(0xFF464646) : Color(0xFFBDBDBD),
        ),
        Text(
          meridiem,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: active ? Color(0xFF464646) : Color(0xFFBDBDBD)),
        ),
      ],
    ),
  );
}
