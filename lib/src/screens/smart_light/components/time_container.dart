import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

class TimeContainer extends StatelessWidget {
  const TimeContainer({
    Key? key,
    required this.time,
    required this.meridiem,
    required this.active,
  }) : super(key: key);

  final String time;
  final String meridiem;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(30),
      width: getProportionateScreenWidth(115),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: active ? const Color(0xFF464646) : const Color(0xFFBDBDBD),
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            time,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                color:
                    active ? const Color(0xFF464646) : const Color(0xFFBDBDBD)),
          ),
          VerticalDivider(
            thickness: 2,
            color: active ? const Color(0xFF464646) : const Color(0xFFBDBDBD),
          ),
          Text(
            meridiem,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                color:
                    active ? const Color(0xFF464646) : const Color(0xFFBDBDBD)),
          ),
        ],
      ),
    );
  }
}
