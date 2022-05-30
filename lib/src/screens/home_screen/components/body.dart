import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/home_screen/components/savings_container.dart';
import 'package:domus/src/screens/home_screen/components/weather_container.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';
import '../../../../provider/base_model.dart';
import '../../../../view/light_detector.dart';
import '../../smart_ac/smart_ac.dart';
import '../../smart_light/smart_light.dart';
import '../../smart_speaker/smart_speaker.dart';
import 'add_device_widget.dart';
import 'darkContainer.dart';
import 'music_widget.dart';

class Body extends StatefulWidget {
  final HomeScreenViewModel? model;

  Body({Key? key, required this.model}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final BaseModel? model = new LightDetectorViewModel();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Container(
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
                  padding: EdgeInsets.all(getProportionateScreenHeight(0)),
                  child: WeatherContainer(context: context, model: widget.model!),
                ),
                Padding(
                  padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                  child: SavingsContainer(context: context, model: widget.model!),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                        child: DarkContainer(
                          itsOn: widget.model!.isLightOn ,
                          switchButton: () {
                            widget.model!.lightSwitch();
                            widget.model!.isLightOn?
                            model!.getValue(value :'on'):
                            model!.getValue(value: 'off');
                            Navigator.of(context).pushNamed(SmartLight.routeName);
                          },
                          onTap: widget.model!.lightSwitch,
                          iconAsset: 'assets/icons/svg/light.svg',
                          device: 'Lightening',
                          deviceCount: '1 lamp',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                        child: DarkContainer(
                          itsOn: widget.model!.isACON,
                          switchButton: widget.model!.acSwitch,
                          onTap: () {
                            Navigator.of(context).pushNamed(SmartAC.routeName);
                          },
                          iconAsset: 'assets/icons/svg/ac.svg',
                          device: 'AC',
                          deviceCount: '4 devices',
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
                        child: DarkContainer(
                          itsOn: widget.model!.isSpeakerON,
                          switchButton: widget.model!.speakerSwitch,
                          onTap: () {
                            Navigator.of(context).pushNamed(SmartSpeaker.routeName);
                          },
                          iconAsset: 'assets/icons/svg/speaker.svg',
                          device: 'Speaker',
                          deviceCount: '1 device',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(getProportionateScreenHeight(5)),
                        child: DarkContainer(
                          itsOn: widget.model!.isFanON,
                          switchButton: widget.model!.fanSwitch,
                          onTap: () {
                            Navigator.of(context).pushNamed(SmartAC.routeName);
                          },
                          iconAsset: 'assets/icons/svg/fan.svg',
                          device: 'Fan',
                          deviceCount: '2 devices',
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
        ],
      ),
    );
  }
}
