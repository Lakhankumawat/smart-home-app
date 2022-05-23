import '../provider/base_model.dart';
import 'package:firebase_database/firebase_database.dart';

class LightDetectorViewModel extends BaseModel{

  LightDetectorViewModel():super();

  FirebaseDatabase database = FirebaseDatabase.instance;
 
 
  Future getValue({required String value}) async{

    await database.ref().remove();
    await database.ref().child('light').set({
      'light':'$value'
    });

    notifyListeners();
  }

}