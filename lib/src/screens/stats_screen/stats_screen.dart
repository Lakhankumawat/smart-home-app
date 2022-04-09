import 'package:domus/src/screens/stats_screen/components.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  static String routeName = '/stats-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stats',
          style: TextStyle(
            fontFamily: 'Lexend',
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(
            Icons.bolt,
            color: Colors.black,
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        child: Column(
          children: [
            Container(
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
            ),
            const StatsSplineChart(),
            // const Expanded(flex: 2, child: StatsBarGraph()),
          ],
        ),
      ),
      bottomNavigationBar: const StatsBottomAppBar(),
    );
  }
}
