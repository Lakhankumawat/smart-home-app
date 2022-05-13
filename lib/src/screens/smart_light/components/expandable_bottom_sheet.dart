import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/smart_light/components/date_container.dart';
import 'package:domus/src/screens/smart_light/components/reusable_buttons.dart';
import 'package:domus/src/screens/smart_light/components/time_container.dart';
import 'package:domus/view/smart_light_view_model.dart';
import 'package:flutter/material.dart';

import 'advance_setting_container.dart';

class ExpandableBottomSheet extends StatelessWidget {
  const ExpandableBottomSheet({Key? key, required this.model})
      : super(key: key);

  final SmartLightViewModel model;

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
        child: ListView(
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
                      'Set schedule room light',
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
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'January 2022',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Select the desired date',
                      style: Theme.of(context).textTheme.headline5,
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.arrow_back_ios_outlined),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.arrow_forward_ios_outlined),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  DateContainer(date: '01', day: 'Sat', active: true),
                  DateContainer(date: '02', day: 'Sun', active: false),
                  DateContainer(date: '03', day: 'Mon', active: false),
                  DateContainer(date: '04', day: 'Tue', active: true),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Select the desired time',
              style: Theme.of(context).textTheme.headline5,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'On Time',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TimeContainer(
                        time: '10:27', meridiem: 'PM', active: true),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Off Time',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TimeContainer(
                        time: '7:30', meridiem: 'AM', active: false),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Advance setting',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              height: 20,
            ),
            const AdvanceSettings(),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ResuableButton(
                        active: false, buttonText: 'Clear all', onPress: () {}),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ResuableButton(
                        active: true, buttonText: 'Schedule', onPress: () {}),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
