import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

Widget MusicWidget(BuildContext context) {
  return Container(
    height: getProportionateScreenHeight(95),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFFFFFFFF),
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
        vertical: getProportionateScreenHeight(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/icons/music.png'),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Music',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                'Give a Little Bit',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.first_page_rounded),
              Image.asset('assets/icons/pause.png'),
              Icon(Icons.last_page_rounded),
            ],
          ),
        ],
      ),
    ),
  );
}
