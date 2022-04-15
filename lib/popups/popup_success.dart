import 'package:domus/popups/popup_state.dart';
import 'package:flutter/material.dart';

class PopupSuccess extends PopupState {
  const PopupSuccess({
    Key? key,
    required String popupTitle,
    String? popupSubtitle,
    List<Widget>? popupActions,
  }) : super(
          key: key,
          popupIcon: Icons.check_rounded,
          popupIconColor: const Color(0xFF27AE60),
          popupTitle: popupTitle,
          popupSubtitle: popupSubtitle,
          popupActions: popupActions,
        );
}
