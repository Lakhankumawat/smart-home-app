import 'dart:ui';
import 'package:domus/provider/base_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SmartFanViewModel extends BaseModel {
  //--------------VARIABLES----------//
  PanelController pc = PanelController();
  // bool isTappedOnColor = false;
  bool isFanOff = false;
  final List<bool> isSelected = [true, false, false];
  double speed = 2;
  final List<int> duration = [10000, 1000, 800, 600, 400, 200];

  ///keeping track of all three factors - even index will do the task
  int selectedIndex = 0;
  Color lightColor = const Color(0xFF7054FF);
  String fanImage = 'assets/images/fan.png';

  void fanSwitch(bool value) {
    isFanOff = value;
    notifyListeners();
  }

  void onToggleTapped(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = i == index;
    }
    notifyListeners();
  }

  void changeSpeed(newVal) {
    speed = newVal;
    notifyListeners();
  }
}
