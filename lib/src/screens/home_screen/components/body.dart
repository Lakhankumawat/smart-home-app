import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/home_screen/components/music_widget.dart';
import 'package:domus/src/screens/home_screen/components/savings_container.dart';
import 'package:domus/src/screens/home_screen/components/weather_container.dart';
import 'package:domus/src/screens/set_event_screen/set_event_screen.dart';
import 'package:domus/src/screens/smart_ac/smart_ac.dart';
import 'package:domus/src/screens/smart_fan/smart_fan.dart';
import 'package:domus/src/screens/smart_light/smart_light.dart';
import 'package:domus/src/screens/smart_speaker/smart_speaker.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:domus/src/screens/smart_tv/smart_tv.dart';
import 'package:flutter/material.dart';

import 'add_device_widget.dart';
import 'dark_container.dart';

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
        decoration: const BoxDecoration(
          color: Color(0xFFF2F2F2),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(5)),
              child: WeatherContainer(model: model),
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(5)),
              child: SavingsContainer(model: model),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: DarkContainer(
                      itsOn: model.isLightOn,
                      switchButton: model.lightSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartLight.routeName);
                      },
                      iconAsset: 'assets/icons/svg/light.svg',
                      device: 'Lightening',
                      deviceCount: '4 lamps',
                      switchFav: model.lightFav,
                      isFav: model.isLightFav,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: DarkContainer(
                      itsOn: model.isACON,
                      switchButton: model.acSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartAC.routeName);
                      },
                      iconAsset: 'assets/icons/svg/ac.svg',
                      device: 'AC',
                      deviceCount: '4 devices',
                      switchFav: model.acFav,
                      isFav: model.isACFav,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(5)),
              child: const MusicWidget(),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: DarkContainer(
                      itsOn: model.isSpeakerON,
                      switchButton: model.speakerSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartSpeaker.routeName);
                      },
                      iconAsset: 'assets/icons/svg/speaker.svg',
                      device: 'Speaker',
                      deviceCount: '1 device',
                      switchFav: model.speakerFav,
                      isFav: model.isSpeakerFav,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                    child: DarkContainer(
                      itsOn: model.isFanON,
                      switchButton: model.fanSwitch,
                      onTap: () {
                        Navigator.of(context).pushNamed(SmartFan.routeName);
                      },
                      iconAsset: 'assets/icons/svg/fan.svg',
                      device: 'Fan',
                      deviceCount: '2 devices',
                      switchFav: model.fanFav,
                      isFav: model.isFanFav,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(getProportionateScreenHeight(8)),
              child: const AddNewDevice(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SetEventScreen.routeName);
              },
              child: const Text(
                'To SetEventScreen',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(SmartTV.routeName);
              },
              child: const Text(
                'Smart TV Screen',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
