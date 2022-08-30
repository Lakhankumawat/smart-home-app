import 'package:flutter/material.dart';

class ResuableButton extends StatelessWidget {
  const ResuableButton({
    Key? key,
    required this.buttonText,
    required this.active,
    required this.onPress,
  }) : super(key: key);

  final String buttonText;
  final bool active;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return active
        ? ElevatedButton(
            onPressed: onPress,
            child: Text(
              buttonText,
              style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: Colors.white,
                  ),
            ),
            style: ElevatedButton.styleFrom(
              //primary: const Color(0xFF464646),
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // <-- Radius
              ),
            ),
          )
        : OutlinedButton(
            onPressed: onPress,
            child: Text(
              buttonText,
              style: Theme.of(context).textTheme.headline2,
            ),
            style: OutlinedButton.styleFrom(
              // primary: const Color(0xFF464646),
              padding: const EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
  }
}
