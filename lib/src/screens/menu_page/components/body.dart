import 'package:flutter/material.dart';
import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/menu_page/components/menu_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(20),
        right: getProportionateScreenWidth(20),
        bottom: getProportionateScreenHeight(12),
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
                Row(
                  children: [
                    const Text(
                      'Menu',
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.close,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(80),
                ),
                const MenuList(),
              ],
            ),
          ),
        ],
      )
    );
  }
}
