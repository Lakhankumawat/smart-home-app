import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MusicWidget extends StatelessWidget {
  const MusicWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(95),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xFFFFFFFF),
        gradient: const LinearGradient(
            stops: [0.02, 0.02], colors: [Colors.black, Colors.white]),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: getProportionateScreenHeight(50),
              height: getProportionateScreenHeight(50),
              decoration: const BoxDecoration(
                color: Color(0xffdadada),
                borderRadius: BorderRadius.all(Radius.elliptical(45, 45)),
              ),
              child: SvgPicture.asset(
                'assets/icons/svg/music.svg',
                color: Colors.black,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Music',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  'Give a Little Bit',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/svg/prev.svg',
                  color: Colors.black,
                  width: getProportionateScreenWidth(16),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/icons/svg/play.svg',
                  color: Colors.black,
                  width: getProportionateScreenWidth(15),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  'assets/icons/svg/next.svg',
                  color: Colors.black,
                  width: getProportionateScreenWidth(16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
