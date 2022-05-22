import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/favourites_screen/components/favourites_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:domus/view/home_screen_view_model.dart';
class Favourites extends StatefulWidget {
  final HomeScreenViewModel model;
  const Favourites({Key? key, required this.model}) : super(key: key);
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: getProportionateScreenHeight(90),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(
              4,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Favourites',
                style: Theme.of(context).textTheme.headline1,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xffdadada),
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(45, 45)),
                ),

                child: IconButton(
                  splashRadius: 25,
                  icon: const Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.grey,
                      size: 30
                  ),
                  onPressed: () {
                    // Navigator.of(context).pushNamed(EditProfile.routeName);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => const EditProfile(),));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      // body: Body(),

      body: FavouriteList(model: widget.model),
    );
  }
}
