import 'package:domus/config/size_config.dart';
import 'package:domus/view/smart_ac_view_model.dart';
import 'package:flutter/material.dart';

class ExpandableBottomSheet extends StatelessWidget {
  const ExpandableBottomSheet({Key? key, required this.model})
      : super(key: key);

  final SmartACViewModel model;

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = const BorderRadius.only(
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
            const SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 35,
                height: 4,
                decoration: const BoxDecoration(
                    color: Color(0xFF464646),
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
              ),
            ),
            const SizedBox(
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
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Set schedule room ac',
                      style: Theme.of(context).textTheme.headline5,
                    )
                  ],
                ),
                Switch.adaptive(
                  inactiveThumbColor: const Color(0xFFE4E4E4),
                  inactiveTrackColor: Colors.white,
                  activeColor: Colors.white,
                  activeTrackColor: const Color(0xFF464646),
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              thickness: 2,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Timer',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  '${model.timerHours.toInt()}H',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            SliderTheme(
              data: SliderThemeData(
                  trackHeight: getProportionateScreenHeight(5),
                  thumbColor: const Color(0xFF464646),
                  activeTrackColor: const Color(0xFF464646),
                  inactiveTrackColor: const Color(0xFFC4C4C4),
                  thumbShape:
                      const RoundSliderThumbShape(enabledThumbRadius: 8)),
              child: Slider(
                min: 1,
                max: 10,
                onChanged: (val) {
                  model.changeTimerHours(val);
                },
                value: model.timerHours,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '2H',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '4H',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '6H',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '8H',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  '10H',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
