import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ReusableCard(
    {required String title,
    required String icon1,
    required String icon2,
    required BuildContext context}) {
  return Container(
    height: 150,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFFFFFFFF),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed(SmartLight.routeName);
                  },
                  child: Image.asset(icon1)),
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
