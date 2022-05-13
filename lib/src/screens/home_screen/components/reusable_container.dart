import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    Key? key,
    required this.title,
    required this.icon1,
    required this.isON,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final String icon1;
  final bool isON;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(100),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFFFFFFF),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(6),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(onTap: onTap, child: Image.asset(icon1)),
                Switch.adaptive(
                  inactiveThumbColor: const Color(0xFFE4E4E4),
                  inactiveTrackColor: const Color(0xFFE4E4E4),
                  activeColor: Colors.white,
                  activeTrackColor: const Color(0xFF464646),
                  value: isON,
                  onChanged: (value) {},
                ),
              ],
            ),
            InkWell(
              onTap: onTap,
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
