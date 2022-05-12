import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

InputDecoration textFormField({String? hintText, Widget? icon})
=> InputDecoration(
  fillColor: Color(0xff3b475a),
  filled: true,
  hintText: hintText,
  hintStyle: TextStyle(
      color: Color(0xFFE7E8EA), fontWeight: FontWeight.w200),
  contentPadding:
  EdgeInsets.symmetric(vertical: 25.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(25.0),
  ),
);