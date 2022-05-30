import 'package:domus/config/size_config.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';

Widget WeatherContainer(
    {required BuildContext context, required HomeScreenViewModel model})
{
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
            horizontal: getProportionateScreenWidth(6),
            vertical: getProportionateScreenHeight(6),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: getProportionateScreenWidth(90),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '28\°C',
                      style: TextStyle(
                        fontSize: 17
                      ),
                    ),
                    Text(
                      'Cloudy',
                      style: TextStyle(
                          fontSize: 17
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(5),
                    ),
                    Text(
                      '27 Mar',
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                    Text(
                      'Jagakarsa,Jakarta',
                      style: TextStyle(
                          fontSize: 16
                      ),
                    )
                  ],
                ),
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
