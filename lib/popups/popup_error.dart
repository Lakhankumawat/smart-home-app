import 'package:domus/popups/popup_state.dart';
import 'package:flutter/material.dart';

class PopupError extends PopupState {
  const PopupError({
    Key? key,
    required String popupTitle,
    String? popupSubtitle,
    List<Widget>? popupActions,
  }) : super(
          key: key,
          popupIcon: Icons.close_rounded,
          popupIconColor: const Color(0xFFDB524E),
          popupTitle: popupTitle,
          popupSubtitle: popupSubtitle,
          popupActions: popupActions,
        );
}
