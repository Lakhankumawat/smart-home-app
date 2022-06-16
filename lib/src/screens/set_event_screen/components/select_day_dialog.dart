import 'package:domus/popups/popup_warning.dart';
import 'package:domus/popups/popup_widgets.dart';
import 'package:flutter/material.dart';

class SelectDayDialog extends StatelessWidget {
  const SelectDayDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupWarning(
      popupTitle: 'Please Select a Day!',
      popupSubtitle: 'Select by tapping on a day',
      popupActions: <Widget>[
        PopupFilledButton(
          onPressed: () => Navigator.pop(context),
          text: 'Ok',
        ),
      ],
    );
  }
}
