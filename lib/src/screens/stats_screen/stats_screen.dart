import 'package:domus/src/screens/stats_screen/components.dart';
import 'package:flutter/material.dart';

class StatsScreen extends StatelessWidget {
  const StatsScreen({Key? key}) : super(key: key);

  static String routeName = '/stats-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey[100],
        title: const Padding(
          padding: EdgeInsets.only(top: 20, left: 15),
          child: Text(
            'Stats',
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 36,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 15),
            child: Icon(
              Icons.bolt,
              size: 36,
              color: Colors.black,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: const [
          TypeSelection(),
          SizedBox(height: 15),
          Expanded(
            child: StatsElectricityUsageChart(),
          ),
          SizedBox(height: 15),
          Expanded(
            child: StatsDeviceConsumptionChart(),
          ),
          SizedBox(height: 15),
        ],
      ),
      bottomNavigationBar: const StatsBottomAppBar(),
    );
  }
}
