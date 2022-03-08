import 'package:domus/src/screens/smart_light/components/color_dot.dart';
import 'package:domus/src/screens/smart_light/components/reusable_buttons.dart';
import 'package:domus/view/smart_light_view_model.dart';
import 'package:flutter/material.dart';
import 'package:domus/constant/constant.dart';

Widget ColorPickerSheet(
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Color',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Pick Light Color',
                style: Theme.of(context).textTheme.headline5,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: Constants.colors
                .map(
                  (e) => ColorDot(
                    index: e.index,
                    context: context,
                    isSelected: e.index == model.selectedIndex,
                    dotColor: e.color,
                    model: model,
                  ),
                )
                .toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: Constants.dotColors2
                .map(
                  (e) => ColorDot(
                    index: e.value,
                    context: context,
                    isSelected: false,
                    dotColor: e,
                    model: model,
                  ),
                )
                .toList(),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ResuableButton(
                      active: false,
                      buttonText: 'Cancel',
                      context: context,
                      onPress: () {
                        model.pc.close();
                      }),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ResuableButton(
                      active: true,
                      buttonText: 'Set Color',
                      context: context,
                      onPress: () {
                        model.pc.close();
                        model.changeImage();
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
