import 'package:domus/config/size_config.dart';
import 'package:domus/view/smart_speaker_view_model.dart';
import 'package:flutter/material.dart';

Widget ExpandableBottomSheet(
    {required BuildContext context, required SmartSpeakerViewModel model}) {
  BorderRadiusGeometry radius = BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );
  return Container(
    decoration: BoxDecoration(color: Colors.white, borderRadius: radius),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 35,
              height: 4,
              decoration: BoxDecoration(
                  color: Color(0xFF464646),
                  borderRadius: BorderRadius.all(Radius.circular(12.0))),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Schedule',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Set schedule speaker',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              Switch.adaptive(
                inactiveThumbColor: Color(0xFFE4E4E4),
                inactiveTrackColor: Colors.white,
                activeColor: Colors.white,
                activeTrackColor: Color(0xFF464646),
                value: true,
                onChanged: (value) {},
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            thickness: 2,
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Volume',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                '${model.speakerVolume.toInt()}%',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
                trackHeight: getProportionateScreenHeight(5),
                thumbColor: Color(0xFF464646),
                activeTrackColor: Color(0xFF464646),
                inactiveTrackColor: Colors.white,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8)),
            child: Slider(
              min: 0,
              max: 100,
              onChanged: (val) {
                model.changeSpeakerVolume(val);
              },
              value: model.speakerVolume,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Off',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '100%',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(9),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Marshell sound dock',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'on',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              Switch.adaptive(
                inactiveThumbColor: Color(0xFFE4E4E4),
                inactiveTrackColor: Colors.white,
                activeColor: Colors.white,
                activeTrackColor: Color(0xFF464646),
                value: model.isSpeakeron,
                onChanged: (value) {
                  model.speakerSwitch(value);
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(9),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bass',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'off',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              Switch.adaptive(
                inactiveThumbColor: Color(0xFFE4E4E4),
                inactiveTrackColor: Colors.white,
                activeColor: Colors.white,
                activeTrackColor: Color(0xFF464646),
                value: model.isSpeakeron,
                onChanged: (value) {
                  model.speakerSwitch(value);
                },
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(9),
          ),
        ],
      ),
    ),
  );
}
