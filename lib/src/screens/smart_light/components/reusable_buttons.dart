import 'package:flutter/material.dart';

Widget ResuableButton(
    {required String buttonText,
    required BuildContext context,
    required bool active}) {
  return active
      ? ElevatedButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.headline2!.copyWith(
                  color: Colors.white,
                ),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF464646),
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
        )
      : OutlinedButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.headline2,
          ),
          style: OutlinedButton.styleFrom(
            primary: Color(0xFF464646),
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        );
}
