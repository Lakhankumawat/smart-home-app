import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:domus/view/smart_tv_view_model.dart';

class ExpandableBottomSheet extends StatelessWidget {
  const ExpandableBottomSheet({Key? key, required this.model})
      : super(key: key);

  final SmartTvViewModel model;

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      'Night Mode',
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Set room light',
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
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
          ],
        ),
      ),
    );
  }
}
