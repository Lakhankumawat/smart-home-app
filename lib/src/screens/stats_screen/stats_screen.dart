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
          children: const [
            TypeSelection(),
            SizedBox(height: 20),
            Expanded(
              child: StatsElectricityUsageChart(),
            ),
            SizedBox(height: 20),
            Expanded(
              child: StatsDeviceConsumptionChart(),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
      bottomNavigationBar: const StatsBottomAppBar(),
    );
  }
}
