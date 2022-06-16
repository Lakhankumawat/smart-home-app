import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 10,right: 10),
      width: MediaQuery.of(context).size.width,
      // height: getProportionateScreenHeight(80),
      // decoration: BoxDecoration(
      //   color: Colors.yellow,
      //   image: DecorationImage(
      //     image: AssetImage("assets/images/favourite.png"),
      //   ),
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height:getProportionateScreenHeight(65) ,),
          Container(
            height: getProportionateScreenHeight(170),
            decoration: const BoxDecoration(

              image:DecorationImage(
                image: AssetImage("assets/images/favourite.png"),
              ),
            ),),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          const Text(
            "You haven't added anything yet",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(2),
          ),
          const Text(
            "to favourites",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),

          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          Container(
            height: getProportionateScreenHeight(43),
            width: getProportionateScreenWidth(230),
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(20),
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Center(
                  child: Text('Add to favourites',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
