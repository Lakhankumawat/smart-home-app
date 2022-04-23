import 'package:domus/provider/base_model.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class SmartTvViewModel extends BaseModel {
  //--------------VARIABLES----------//

  PanelController pc = PanelController();
  final List<bool> isSelected = [true, false, false];
  double lightIntensity = 65;
  bool isTvOff = false;
  int selectedIndex = 0;
  String lightImage = 'assets/images/tv.png';

  void tvSwitch(bool value) {
    isTvOff = value;
    notifyListeners();
  }

  void onToggleTapped(int index) {
    for (int i = 0; i < isSelected.length; i++) {
      isSelected[i] = i == index;
    }
    notifyListeners();
  }

  void changeTvIntensity(double newVal) {
    lightIntensity = newVal;
    notifyListeners();
  }
}
