// ignore_for_file: prefer_const_constructors
import 'package:domus/enum/view_state.dart';
import 'package:domus/service/navigation_service.dart';
import 'package:flutter/material.dart';
import 'getit.dart';

class BaseModel extends ChangeNotifier {
  final navigationService = getIt<NavigationService>();
  ViewState _state = ViewState.Idle;

  ViewState get state => _state;
  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
  Future? getValue({required String value}) {
    return null;
  }
}
