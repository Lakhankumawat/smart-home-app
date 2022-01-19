import 'package:domus/config/size_config.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';

Widget WeatherContainer(
    {required BuildContext context, required HomeScreenViewModel model}) {
  return Stack(
    children: [
      Container(
        height: getProportionateScreenHeight(100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xFFFFFFFF),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            vertical: getProportionateScreenHeight(6),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(90),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '28\°C',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  Text(
                    'Cloudy',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(5),
                  ),
                  Text(
                    '27 Mar 2022',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(
                    'Jagakarsa,Jakarta',
                    style: Theme.of(context).textTheme.headline5,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      Image.asset(
        'assets/images/weather/${model.randomNumber}.png',
        height: getProportionateScreenHeight(110),
        width: getProportionateScreenWidth(140),
        fit: BoxFit.contain,
      ),
    ],
  );
}
