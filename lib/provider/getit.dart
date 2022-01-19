import 'package:domus/service/navigation_service.dart';
import 'package:domus/view/home_screen_view_model.dart';
import 'package:domus/view/smart_ac_view_model.dart';
import 'package:domus/view/smart_light_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setupLocator() {
  getIt.registerLazySingleton(() => NavigationService());
  getIt.registerFactory(() => HomeScreenViewModel());
  getIt.registerFactory(() => SmartLightViewModel());
  getIt.registerFactory(() => SmartACViewModel());
}
