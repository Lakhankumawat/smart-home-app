import 'package:domus/src/screens/stats_screen/components.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsDeviceConsumptionChart extends StatelessWidget {
  const StatsDeviceConsumptionChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatsChart(
      title: 'Consumption by device',
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Icon(
            Icons.warning,
            size: 18,
          ),
          SizedBox(width: 5),
          Text('Check level 240'),
        ],
      ),
      plotOffset: -40,
      content: ColumnSeries<Consumption, String>(
        // Plots Columns / Bar chart
        color: Colors.grey[400],
        dataSource: const [
          Consumption(day: 'First', usage: 20),
          Consumption(day: 'Mon', usage: 22),
          Consumption(day: 'Tue', usage: 30),
          Consumption(day: 'Wed', usage: 36),
          Consumption(day: 'Thur', usage: 19),
          Consumption(day: 'Fri', usage: 25),
          Consumption(day: 'Sat', usage: 20),
          Consumption(day: 'Sun', usage: 33),
          Consumption(day: 'Last', usage: 20),
        ],
        xValueMapper: (consumption, _) => consumption.day,
        yValueMapper: (consumption, _) => consumption.usage,
      ),
    );
  }
}
