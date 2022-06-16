import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:domus/view/smart_tv_view_model.dart';

class Intensity extends StatelessWidget {
  const Intensity({Key? key, required this.model})
      : super(key: key);

  final SmartTvViewModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(
              15,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Intensity',
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                '${model.lightIntensity.toInt()}%',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
        ),
        SliderTheme(
          data: SliderThemeData(
              trackHeight: getProportionateScreenHeight(5),
              thumbColor: const Color(0xFF464646),
              activeTrackColor: const Color(0xFF464646),
              inactiveTrackColor: Colors.white,
              thumbShape:
              const RoundSliderThumbShape(enabledThumbRadius: 8)),
          child: Slider(
            min: 0,
            max: 100,
            onChanged: (val) {
              model.changeTvIntensity(val);
            },
            value: model.lightIntensity,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(
              15,
            ),
          ),
          child: Row(
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
        ),
      ],
    );
  }
}
