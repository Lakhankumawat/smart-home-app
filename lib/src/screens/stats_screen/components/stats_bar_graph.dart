import 'package:domus/src/screens/stats_screen/components.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsBarGraph extends StatelessWidget {
  const StatsBarGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      margin: const EdgeInsets.all(0),
      plotAreaBorderWidth: 0,
      primaryXAxis: CategoryAxis(
        isVisible: false,
      ),
      primaryYAxis: CategoryAxis(
        isVisible: false,
      ),
      series: <ColumnSeries<ElectricityUsage, String>>[
        ColumnSeries(
          dataSource: [
            const ElectricityUsage(day: 'Mon', consumption: 22),
            const ElectricityUsage(day: 'Tue', consumption: 30),
            const ElectricityUsage(day: 'Wed', consumption: 36),
            const ElectricityUsage(day: 'Thur', consumption: 19),
            const ElectricityUsage(day: 'Fri', consumption: 25),
            const ElectricityUsage(day: 'Sat', consumption: 20),
            const ElectricityUsage(day: 'Sun', consumption: 33),
            const ElectricityUsage(day: 'New Mon', consumption: 28),
            const ElectricityUsage(day: 'New Tue', consumption: 36),
            const ElectricityUsage(day: 'New Wed', consumption: 22),
            const ElectricityUsage(day: 'New Thur', consumption: 15),
            const ElectricityUsage(day: 'New Fri', consumption: 40),
            const ElectricityUsage(day: 'New Sat', consumption: 32),
            const ElectricityUsage(day: 'New Sun', consumption: 35),
          ],
          xValueMapper: (usage, _) => usage.day,
          yValueMapper: (usage, _) => usage.consumption,
        )
      ],
    );
  }
}
