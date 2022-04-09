import 'package:flutter/material.dart';

class StatsBottomAppBar extends StatelessWidget {
  const StatsBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bolt_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bar_chart_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person_rounded),
          ),
        ],
      ),
    );
  }
}
