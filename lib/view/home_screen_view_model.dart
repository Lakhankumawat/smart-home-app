import 'dart:math';

import 'package:domus/provider/base_model.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenViewModel extends BaseModel {
  //-------------VARIABLES-------------//
  int selectedIndex = 0;
  int randomNumber = 1;
  final PageController pageController = PageController();
  bool isLightOn = true;
  bool isACON = false;
  bool isTVON = false;
  bool isFanON = false;

  void generateRandomNumber() {
    randomNumber = Random().nextInt(8);
    notifyListeners();
  }

  ///On tapping bottom nav bar items
  void onItemTapped(int index) {
    selectedIndex = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeOut);
    notifyListeners();
  }
}
