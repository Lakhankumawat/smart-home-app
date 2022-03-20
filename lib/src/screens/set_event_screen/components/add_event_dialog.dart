import 'package:domus/src/screens/set_event_screen/components/alert_dialog_theme.dart';
import 'package:flutter/material.dart';

class AddEventDialog extends StatelessWidget {
  const AddEventDialog({
    Key? key,
    required this.controller,
    required this.onAccept,
    required this.onCancel,
  }) : super(key: key);

  final TextEditingController controller;
  final VoidCallback onAccept;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add an Event'),
      titleTextStyle: AlertDialogTheme.titleTextStyle,
      content: TextField(
        autofocus: true,
        style: AlertDialogTheme.textFieldStyle,
        textCapitalization: TextCapitalization.words,
        controller: controller,
        decoration: InputDecoration(
          hintText: 'Your Event',
          hintStyle: AlertDialogTheme.textFieldStyle,
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: onCancel,
          child: Text(
            'Cancel',
            style: AlertDialogTheme.buttonTextStyle,
          ),
        ),
        TextButton(
          onPressed: onAccept,
          child: Text(
            'Ok',
            style: AlertDialogTheme.buttonTextStyle,
          ),
        ),
      ],
    );
  }
}
