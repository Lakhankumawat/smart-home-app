import 'package:flutter/material.dart';

class PopupOutlinedButton extends StatelessWidget {
  const PopupOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFF464646)),
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          const BorderSide(
            color: Color(0xFF464646),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
