import 'package:domus/provider/base_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SmartACViewModel extends BaseModel {
  //--------------VARIABLES----------//
  PanelController pc = PanelController();
  bool isACon = true;
  final List<bool> isSelected = [true, false, false, false];
  double timerHours = 8;

  void acSwitch(bool value) {
    isACon = value;
    notifyListeners();
  }

  void onToggleTapped(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = i == index;
    }
    notifyListeners();
  }

  void changeTimerHours(double newval) {
    timerHours = newval;
    notifyListeners();
  }
}
