import 'package:domus/config/size_config.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddNewDevice extends StatelessWidget {
  const AddNewDevice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      padding: EdgeInsets.all(
        getProportionateScreenHeight(5),
      ),
      color: const Color(0xFFBDBDBD),
      strokeWidth: 2,
      dashPattern: const [9, 3],
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Container(
          height: getProportionateScreenHeight(55),
          width: double.maxFinite,
          color: const Color(0xFFF2F2F2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
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
    );
  }
}
