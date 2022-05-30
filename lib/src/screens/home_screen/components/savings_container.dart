import 'package:domus/config/size_config.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:flutter/material.dart';

Widget SavingsContainer(
    {required BuildContext context, required HomeScreenViewModel model}) {
  return Stack(
    children: [
      Container(
      clipBehavior:Clip.antiAliasWithSaveLayer,
        height: getProportionateScreenHeight(75) ,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.5,
              colors: [
            Color(0xD0FFFEFE),
                Color(0xB5DCD7D7),
          ],
              stops: [
                0.1,
                1,
              ]
          ),
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFA3A2A2),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Energy Saving',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '+35%',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.green,
                        ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(7),
                  ),
                  Text(
                    '23.5 kWh',
                    style: TextStyle(
                      fontSize: 14
                    ),

                  ),
                ],
              ),
              SizedBox(
                width: getProportionateScreenWidth(90),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: 0,
        child: Image.asset(
          'assets/images/thunder.png',
          height: getProportionateScreenHeight(100),
          width: getProportionateScreenWidth(140),
          fit: BoxFit.contain,
        ),
      ),
    ],
  );
}
