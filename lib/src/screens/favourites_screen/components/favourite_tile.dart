import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavouriteTile extends StatelessWidget {
  final String iconAsset;
  final VoidCallback onTap;
  final String device;
  final String deviceCount;
  final bool itsOn;
  final VoidCallback switchButton;
  final bool isFav;
  final VoidCallback switchFav;
  const FavouriteTile({
    Key? key,
    required this.iconAsset,
    required this.onTap,
    required this.device,
    required this.deviceCount,
    required this.itsOn,
    required this.switchButton,
    required this.isFav,
    required this.switchFav,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15,
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Container(
        padding: const EdgeInsets.only(top: 20),
        width: 200,
        // margin: EdgeInsets.only(bottom: 10),
        height: MediaQuery.of(context).size.height / 5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffededed),
            // color: itsOn? const Color.fromRGBO(0, 0, 0, 1)
            // ? const Color.fromRGBO(0, 0, 0, 1)
            // ? Colors.white
            //     : const Color(0xffededed)
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10),
            // vertical: getProportionateScreenHeight(6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Color(0xffdadada),
                      // color: itsOn
                      //     ? const Color.fromRGBO(45, 45, 45, 1)
                      //     :
                      borderRadius: BorderRadius.all(Radius.elliptical(45, 45)),
                    ),
                    child: SvgPicture.asset(
                      iconAsset,
                      color:const Color(0xFF808080) ,
                      // color: itsOn ? Colors.amber : ,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(10),
                  ),
                  Text(
                    device,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Colors.black,
                      // color: itsOn ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(100),
                  ),
                  GestureDetector(
                    child: Container(
                      width: 48,
                      height: 25.6,
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                        // color:const Color(0xffd6d6d6),
                        // color: itsOn ? Colors.black : ,
                        border: Border.all(
                          color:Colors.grey,
                          // color: const Color.fromRGBO(255, 255, 255, 1),
                          width: itsOn ? 2 : 0,
                        ),
                      ),
                      child: Row(
                        children: [
                          itsOn ? const Spacer() : const SizedBox(),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: switchButton,
                  ),
                  const SizedBox(width: 15,)
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  Text(
                    deviceCount,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        fontSize: 13,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.6),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    itsOn ? 'On' : 'Off',
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                      color: Colors.black,
                      // color: itsOn ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(160),
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    height: 25,
                    width: 70,
                    decoration: BoxDecoration(
                      color:Colors.grey.shade300 ,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Kitchen",
                        style: TextStyle(
                          color:Colors.grey.shade700,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
