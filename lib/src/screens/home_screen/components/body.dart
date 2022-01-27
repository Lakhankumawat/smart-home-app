import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/home_screen/components/music_widget.dart';
import 'package:domus/src/screens/home_screen/components/reusable_container.dart';
import 'package:domus/src/screens/home_screen/components/savings_container.dart';
import 'package:domus/src/screens/home_screen/components/weather_container.dart';
import 'package:domus/src/screens/smart_ac/smart_ac.dart';
import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:domus/src/screens/smart_speaker/smart_speaker.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(5)),
              child: SavingsContainer(context: context, model: model),
            ),
            Row(
              children: [
                Expanded(
                  // child: Padding(
                  //   padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                  //   child: ReusableCard(
                  //     title: 'Smart Light',
                  //     icon1: 'assets/icons/Light.png',
                  //     isON: model.isLightOn,
                  //     context: context,
                  //     onTap: () {
                  //       Navigator.of(context).pushNamed(SmartLight.routeName);
                  //     },
                  //   ),
                  // ),
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartLight.routeName);
                      },
                      child: Container(
                        width: 165,
                        height: 194,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(10),
                            vertical: getProportionateScreenHeight(6),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(45, 45, 45, 1),
                                      borderRadius: BorderRadius.all(
                                          Radius.elliptical(45, 45)),
                                    ),
                                    child: Image.asset(
                                      'assets/icons/Light.png',
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: Color(0xFF808080),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lighting',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  Text(
                                    '4 lamps',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(166, 166, 166, 1),
                                        fontSize: 13,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.6),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'On',
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                  Container(
                                    width: 48,
                                    height: 25.6,
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        width: 2,
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Spacer(),
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          // child: Container(
                                          //   height: 10,
                                          //   width: 10,
                                          // ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
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
                      title: 'Smart Speaker',
                      isON: model.isSpeakerON,
                      icon1: 'assets/icons/speaker.png',
                      context: context,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartSpeaker.routeName);
                      },
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
