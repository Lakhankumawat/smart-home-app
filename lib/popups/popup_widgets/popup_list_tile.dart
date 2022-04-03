import 'package:flutter/material.dart';

class PopupListTile extends StatelessWidget {
  const PopupListTile({
    Key? key,
    required this.popupTitle,
    this.popupSubtitle,
  }) : super(key: key);

  final String popupTitle;
  final String? popupSubtitle;

  // Judges whether the SubTitle is given, and acts accordingly
  Widget? _judgeSubtitle() {
    return popupSubtitle == null
        ? null
        : Text(
            popupSubtitle!,
            textAlign: TextAlign.center,
          );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(
          popupTitle,
          style: const TextStyle(
            fontFamily: 'Lexend',
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      subtitle: _judgeSubtitle(),
    );
  }
}
