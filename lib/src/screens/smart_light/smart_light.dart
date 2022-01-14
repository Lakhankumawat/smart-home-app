import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'components/body.dart';
import 'components/color_pick_sheet.dart';
import 'components/expandable_bottom_sheet.dart';

class SmartLight extends StatelessWidget {
  static String routeName = '/smart-light';
  const SmartLight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SlidingUpPanel(
        backdropEnabled: true,
        maxHeight: 700,
        color: Color(0xFFF2F2F2),
        boxShadow: [],
        body: Scaffold(
          backgroundColor: Color(0xFFF2F2F2),
          body: Body(),
        ),
        panel: ColorPickerSheet(context: context),
      ),
    );
  }
}
