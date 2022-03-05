import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileLandingScreen extends StatefulWidget {
  const ProfileLandingScreen({Key? key}) : super(key: key);

  @override
  State<ProfileLandingScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(36),
              ),
              child: Row(
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    'assets/icons/svg/profile.svg',
                    height: getProportionateScreenHeight(28),
                    width: getProportionateScreenWidth(28),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(24),
            ),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Container(
                  height: getProportionateScreenHeight(80),
                  width: getProportionateScreenWidth(80),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(
                      100,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/svg/edit_pen.svg',
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(6),
            ),
            Text(
              "Ashish",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              "Smart User",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getProportionateScreenHeight(50),
              ),
              child: Column(
                children: [
                  Container(
                    child: ProfileListItems(
                      iconPath: 'assets/icons/svg/lock.svg',
                      itemName: "Privacy",
                      cta: () {},
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(35),
                  ),
                  Container(
                    child: ProfileListItems(
                      iconPath: 'assets/icons/svg/favourite.svg',
                      itemName: "Favourites",
                      cta: () {},
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(35),
                  ),
                  Container(
                    child: ProfileListItems(
                      iconPath: 'assets/icons/svg/help.svg',
                      itemName: "Help Center",
                      cta: () {},
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(35),
                  ),
                  Container(
                    child: ProfileListItems(
                      iconPath: 'assets/icons/svg/gift.svg',
                      itemName: "Invite a friend",
                      cta: () {},
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(35),
                  ),
                  Container(
                    child: ProfileListItems(
                      iconPath: 'assets/icons/svg/sign_out.svg',
                      itemName: "Sign out",
                      cta: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileListItems extends StatelessWidget {
  final String iconPath;
  final String itemName;
  final Function cta;
  const ProfileListItems({
    Key? key,
    required this.iconPath,
    required this.itemName,
    required this.cta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => cta,
      child: Container(
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
            ),
            SizedBox(
              width: getProportionateScreenWidth(25),
            ),
            Text(
              itemName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
