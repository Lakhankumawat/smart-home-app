import 'package:flutter/material.dart';
import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/my_list_screen/components/list_data.dart';
import 'package:domus/src/screens/my_list_screen/components/horizontal_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: getProportionateScreenHeight(50),
          bottom: 20,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 15),
              child: Row(
                children: [
                  const Text(
                    'My List',
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
            ),
            SizedBox(
              height: getProportionateScreenHeight(15),
            ),
            SizedBox(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(270),
              child: MoviesList(movies: ListData().movies),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(7),
              ),
              child: const Text(
                  'Europe movie',
                  style: TextStyle(fontSize: 19,),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(270),
              child: MoviesList(movies: ListData().movies),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(7),
              ),
              child: const Text(
                  'Romance/Drama',
                  style: TextStyle(fontSize: 19,),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(270),
              child: MoviesList(movies: ListData().movies),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: getProportionateScreenHeight(7),
              ),
              child: const Text(
                  'Action/Thriller',
                  style: TextStyle(fontSize: 19,),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(270),
              child: MoviesList(movies: ListData().movies),
            ),
          ],
        ),
      ),
    );
  }
}
