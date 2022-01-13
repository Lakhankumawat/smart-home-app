import 'package:domus/provider/base_model.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenViewModel extends BaseModel {
  //-------------VARIABLES-------------//
  int selectedIndex = 0;
  final PageController pageController = PageController();

  ///On tapping bottom nav bar items
  void onItemTapped(int index) {
    selectedIndex = index;
    pageController.animateToPage(index,
        duration: Duration(milliseconds: 500), curve: Curves.easeOut);
    notifyListeners();
  }
}
