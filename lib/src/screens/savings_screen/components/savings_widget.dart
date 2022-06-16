

import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'devices_list.dart';
import 'doughnut_chart.dart';

class Savings extends StatefulWidget {
  const Savings({Key? key, required this.title, required this.savings}) : super(key: key);
  final String title;
  final int savings;

  @override
  State<Savings> createState() => _SavingsState();
}

class _SavingsState extends State<Savings> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(0),
          vertical: getProportionateScreenHeight(10)
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          color:  const Color(0xFFBDBDBD).withOpacity(0.15),
        ),
        child: Padding(
          padding: EdgeInsets.all(getProportionateScreenHeight(10)),
          child: Row(
            children: [
              DoughnutChart(totalSavings:widget.savings, period: widget.title),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15,bottom: 10),
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  SizedBox(
                      width: getProportionateScreenHeight(125),
                      height: getProportionateScreenHeight(60),
                      child: DevicesList()),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
