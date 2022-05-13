import 'dart:ui';

import 'package:domus/constant/constant.dart';
import 'package:domus/provider/base_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SmartLightViewModel extends BaseModel {
  //--------------VARIABLES----------//
  PanelController pc = PanelController();
  bool isTappedOnColor = false;
  bool isLightOff = false;
  final List<bool> isSelected = [true, false];
  double lightIntensity = 65;

  ///keeping track of all three factors - even index will do the task
  int selectedIndex = 0;
  Color lightColor = const Color(0xFF7054FF);
  String lightImage = 'assets/images/purple.png';

  void showColorPanel() {
    isTappedOnColor = true;
    notifyListeners();
    pc.open();
  }

  void lightSwitch(bool value) {
    isLightOff = value;
    notifyListeners();
  }

  void onPanelClosed() {
    if (isTappedOnColor) {
      isTappedOnColor = false;
      notifyListeners();
    }
  }

  void changeColor({required int currentIndex}) {
    selectedIndex = currentIndex;
    lightColor = Constants.colors[currentIndex].color;
    notifyListeners();
  }

  void changeImage() {
    lightImage = Constants.colors[selectedIndex].image;
    notifyListeners();
  }

  void onToggleTapped(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = i == index;
    }
    notifyListeners();
  }

  void changeLightIntensity(double newVal) {
    lightIntensity = newVal;
    notifyListeners();
  }
}
