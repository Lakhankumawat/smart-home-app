import 'package:flutter/material.dart';

Widget MusicWidget(BuildContext context) {
  return Container(
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xFFFFFFFF),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
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
