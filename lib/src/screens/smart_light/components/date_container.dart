import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  const DateContainer({
    Key? key,
    required this.date,
    required this.day,
    required this.active,
  }) : super(key: key);

  final String date;
  final String day;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: getProportionateScreenHeight(70),
        width: getProportionateScreenWidth(65),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: active ? const Color(0xFF464646) : Colors.white,
          border: Border.all(
            color: active ? const Color(0xFF464646) : const Color(0xFFBDBDBD),
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              ' $date\n$day',
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: active ? Colors.white : const Color(0xFFBDBDBD),
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
