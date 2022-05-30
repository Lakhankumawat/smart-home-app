import 'package:domus/config/size_config.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

Widget AddNewDevice(BuildContext context) {
  return Container(
    child: DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      padding: EdgeInsets.all(
        getProportionateScreenHeight(5),
      ),
      color: Color(0xFFBDBDBD),
      strokeWidth: 2,
      dashPattern: [9, 3],
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: getProportionateScreenHeight(55),
          width: double.maxFinite,
          color: Color(0xFFF2F2F2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Color(0xFFBDBDBD),
              ),
              Text(
                'Add New Device',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
