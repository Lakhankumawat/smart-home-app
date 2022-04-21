import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';

class TypeSelection extends StatefulWidget {
  const TypeSelection({Key? key}) : super(key: key);

  @override
  State<TypeSelection> createState() => _TypeSelectionState();
}

class _TypeSelectionState extends State<TypeSelection> {
  final List<bool> isSelected = [false, true, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(18),
          right: Radius.circular(18),
        ),
      ),
      child: ToggleButtons(
        selectedColor: Colors.white,
        fillColor: const Color(0xFF464646),
        renderBorder: false,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(18),
          right: Radius.circular(18),
        ),
        textStyle: const TextStyle(
          fontFamily: 'ABeeZee',
        ),
        isSelected: isSelected,
        children: [
          SizedBox(
            width: getProportionateScreenWidth(78),
            child: const Text(
              'Weekly',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(78),
            child: const Text(
              'Daily',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(78),
            child: const Text(
              'Monthly',
              textAlign: TextAlign.center,
            ),
          ),
        ],
        onPressed: (index) => setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = i == index;
          }
        }),
      ),
    );
  }
}
