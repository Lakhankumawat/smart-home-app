import 'package:domus/config/size_config.dart';
import 'package:domus/view/smart_ac_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class Body extends StatelessWidget {
  final SmartACViewModel model;
  const Body({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getProportionateScreenWidth(19),
              top: getProportionateScreenHeight(5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back_outlined)),
                Stack(
                  children: [
                    Text(
                      'Air Conditioner',
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 45,
                            color: Color(0xFFBDBDBD).withOpacity(0.5),
                          ),
                    ),
                    Text(
                      'Living\nRoom',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SleekCircularSlider(
              min: 5,
              max: 40,
              initialValue: 23,
              appearance: CircularSliderAppearance(
                size: 200,
                startAngle: 250,
                angleRange: 360,
                customColors: CustomSliderColors(
                  trackColor: Color(0xFFBDBDBD),
                  progressBarColor: Color(0xFF464646),
                  // hideShadow: true,
                  shadowColor: Color(0xFFBDBDBD).withOpacity(0.1),
                  shadowMaxOpacity: 1,
                  shadowStep: 25,
                ),
                customWidths: CustomSliderWidths(
                  progressBarWidth: 22,
                  handlerSize: 25,
                  trackWidth: 22,
                  shadowWidth: 50,
                ),
              ),
              onChange: (double value) {
                // callback providing a value while its being changed (with a pan gesture)
              },
              onChangeStart: (double startValue) {
                // callback providing a starting value (when a pan gesture starts)
              },
              onChangeEnd: (double endValue) {
                // ucallback providing an ending value (when a pan gesture ends)
              },
              innerWidget: (double value) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 50),
                  child: Column(
                    children: [
                      Text(
                        '${value.toInt()}\°',
                        style: Theme.of(context).textTheme.headline1,
                      ),
                      Text(
                        'Celcius',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Samsung AC',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Connected',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
              Switch.adaptive(
                inactiveThumbColor: Color(0xFFE4E4E4),
                inactiveTrackColor: Colors.white,
                activeColor: Colors.white,
                activeTrackColor: Color(0xFF464646),
                value: model.isACon,
                onChanged: (value) {
                  model.acSwitch(value);
                },
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // Divider(
          //   thickness: 2,
          // ),
          // SizedBox(
          //   height: 15,
          // ),
          Text(
            'Mode',
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: getProportionateScreenHeight(9),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: ToggleButtons(
              selectedColor: Colors.white,
              fillColor: Color(0xFF464646),
              renderBorder: false,
              borderRadius: BorderRadius.circular(15),
              textStyle: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Colors.white),
              children: <Widget>[
                SizedBox(
                  width: getProportionateScreenWidth(57.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/icons/winter.png'),
                      Text(
                        'Cool',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(57.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/icons/air.png'),
                      Text(
                        'Air',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(57.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/icons/sun.png'),
                      Text(
                        'Hot',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(57.5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/icons/eco.png'),
                      Text(
                        'Eco',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
              onPressed: (int index) {
                model.onToggleTapped(index);
              },
              isSelected: model.isSelected,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
        ],
      ),
    );
  }
}
