import 'package:domus/src/screens/set_event_screen/components/alert_dialog_theme.dart';
import 'package:flutter/material.dart';

class SelectDayDialog extends StatelessWidget {
  const SelectDayDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Please Select a Day!'),
      titleTextStyle: AlertDialogTheme.titleTextStyle,
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            'Ok',
            style: AlertDialogTheme.buttonTextStyle,
          ),
        ),
      ],
    );
  }
}
