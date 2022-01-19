import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/home_screen/components/music_widget.dart';
import 'package:domus/src/screens/home_screen/components/reusable_container.dart';
import 'package:domus/src/screens/home_screen/components/weather_container.dart';
import 'package:domus/src/screens/smart_ac/smart_ac.dart';
import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';

import 'add_device_widget.dart';

class Body extends StatelessWidget {
  final HomeScreenViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(7),
          vertical: getProportionateScreenHeight(7),
        ),
        decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(5)),
              child: WeatherContainer(context: context, model: model),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: ReusableCard(
                      title: 'Smart Light',
                      icon1: 'assets/icons/Light_off.png',
                      isON: model.isLightOn,
                      context: context,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartLight.routeName);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: ReusableCard(
                      title: 'Smart Ac',
                      icon1: 'assets/icons/AC.png',
                      context: context,
                      isON: model.isACON,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartAC.routeName);
                      },
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(5)),
              child: MusicWidget(context),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: ReusableCard(
                      title: 'Smart TV',
                      isON: model.isTVON,
                      icon1: 'assets/icons/TV.png',
                      context: context,
                      onTap: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: ReusableCard(
                      title: 'Smart Fan',
                      isON: model.isFanON,
                      icon1: 'assets/icons/Fan.png',
                      context: context,
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(8)),
              child: AddNewDevice(context),
            ),
          ],
        ),
      ),
    );
  }
}
