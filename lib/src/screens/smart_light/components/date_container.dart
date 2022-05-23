import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

Widget DateContainer(
    {required String date,
    required String day,
    required bool active,
    required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: getProportionateScreenHeight(70),
      width: getProportionateScreenWidth(65),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: active ? Color(0xFF464646) : Colors.white,
        border: Border.all(
          color: active ? Color(0xFF464646) : Color(0xFFBDBDBD),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            ' $date\n$day',
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: active ? Colors.white : Color(0xFFBDBDBD),
                ),
          ),
        ),
      ),
    ),
  );
}
