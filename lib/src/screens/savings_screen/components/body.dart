import 'package:domus/src/screens/savings_screen/components/savings_widget.dart';
import 'package:flutter/material.dart';
import 'package:domus/config/size_config.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          left: getProportionateScreenWidth(10),
          right: getProportionateScreenWidth(10),
          bottom: getProportionateScreenHeight(15),
        ),
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(50),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, right: 7),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        const Text(
                          'Savings',
                          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                            'assets/icons/svg/savings_filled.svg'
                             ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20),
                  ),

                  const Savings(title: 'Weekly savings',savings: 12),
                  const Savings(title: 'Monthly savings',savings: 39),
                ],
              ),
            ),
          ],
        )
    );
  }
}
