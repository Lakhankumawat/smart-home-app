import 'package:flutter/material.dart';

class PopupFormField extends StatelessWidget {
  const PopupFormField({
    Key? key,
    this.textController,
    this.popupIcon,
    required this.popupHintText,
    this.onTap,
  }) : super(key: key);

  final TextEditingController? textController;
  final Widget? popupIcon;
  final String popupHintText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.only(left: 11),
        child: TextFormField(
          autofocus: true,
          textCapitalization: TextCapitalization.words,
          controller: textController,
          decoration: InputDecoration(
            border: InputBorder.none,
            icon: popupIcon,
            hintText: popupHintText,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
