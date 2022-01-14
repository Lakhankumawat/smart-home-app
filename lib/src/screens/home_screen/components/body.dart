import 'package:domus/src/screens/home_screen/components/music_widget.dart';
import 'package:domus/src/screens/home_screen/components/reusable_container.dart';
import 'package:flutter/material.dart';

import 'add_device_widget.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReusableCard(
                    title: 'Smart Light',
                    icon1: 'assets/icons/Light_off.png',
                    icon2: 'assets/icons/off.png',
                    context: context,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReusableCard(
                    title: 'Smart Ac',
                    icon1: 'assets/icons/AC.png',
                    icon2: 'assets/icons/off.png',
                    context: context,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MusicWidget(context),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReusableCard(
                    title: 'Smart TV',
                    icon1: 'assets/icons/TV.png',
                    icon2: 'assets/icons/off.png',
                    context: context,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ReusableCard(
                    title: 'Smart Fan',
                    icon1: 'assets/icons/Fan.png',
                    icon2: 'assets/icons/off.png',
                    context: context,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AddNewDevice(context),
          ),
        ],
      ),
    );
  }
}
