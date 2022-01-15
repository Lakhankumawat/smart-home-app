import 'package:domus/src/screens/smart_light/components/date_container.dart';
import 'package:domus/src/screens/smart_light/components/reusable_buttons.dart';
import 'package:domus/src/screens/smart_light/components/time_container.dart';
import 'package:domus/view/smart_light_view_model.dart';
import 'package:flutter/material.dart';

import 'advance_setting_container.dart';

Widget ExpandableBottomSheet(
    {required BuildContext context, required SmartLightViewModel model}) {
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
                    'Set schedule room light',
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
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Select the desired date',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              Row(
                children: [
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
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DateContainer(
                    date: '01', day: 'Sat', active: true, context: context),
                DateContainer(
                    date: '02', day: 'Sun', active: false, context: context),
                DateContainer(
                    date: '03', day: 'Mon', active: false, context: context),
                DateContainer(
                    date: '04', day: 'Tue', active: true, context: context),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Select the desired time',
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 20,
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
                  SizedBox(
                    height: 10,
                  ),
                  TimeContainer(
                      context: context,
                      time: '10:27',
                      meridiem: 'PM',
                      active: true),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Off Time',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TimeContainer(
                      context: context,
                      time: '7:30',
                      meridiem: 'AM',
                      active: false),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Advance setting',
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 20,
          ),
          AdvanceSettings(context: context),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ResuableButton(
                      active: false,
                      buttonText: 'Clear all',
                      context: context,
                      onPress: () {}),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ResuableButton(
                      active: true,
                      buttonText: 'Schedule',
                      context: context,
                      onPress: () {}),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
