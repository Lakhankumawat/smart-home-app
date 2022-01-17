import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

Widget ReusableCard(
    {required String title,
    required String icon1,
    required String icon2,
    required VoidCallback onTap,
    required BuildContext context}) {
  return Container(
    height: getProportionateScreenHeight(100),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFFFFFFFF),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
        vertical: getProportionateScreenHeight(6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(onTap: onTap, child: Image.asset(icon1)),
              Image.asset(icon2),
            ],
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
        ],
      ),
    ),
  );
}
