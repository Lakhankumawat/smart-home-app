import 'package:flutter/material.dart';

class TypeSelection extends StatelessWidget {
  const TypeSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            child: const Text(
              'Weekly',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text(
              'Daily',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          ),
          TextButton(
            child: const Text(
              'Monthly',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
