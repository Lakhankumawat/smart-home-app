import 'package:flutter/material.dart';

class PopupAlertDialog extends StatelessWidget {
  const PopupAlertDialog({
    Key? key,
    required this.popupTopWidget,
    required this.popupContent,
    this.popupActions,
  }) : super(key: key);

  final Widget popupTopWidget;
  final Widget popupContent;
  final List<Widget>? popupActions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: popupTopWidget,
      content: popupContent,
      actionsAlignment: MainAxisAlignment.center,
      actions: popupActions,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    );
  }
}
