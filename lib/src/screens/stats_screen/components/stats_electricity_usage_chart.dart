import 'package:domus/src/screens/stats_screen/components.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsElectricityUsageChart extends StatelessWidget {
  const StatsElectricityUsageChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatsChart(
      title: 'Daily',
      subtitle: const Text(
        'Electricity Usage',
        style: TextStyle(
          fontFamily: 'ABeeZee',
        ),
      ),
      trailing: const Text(
        '128',
        style: TextStyle(
          fontFamily: 'ABeeZee',
        ),
      ),
      plotOffset: -35,
      content: SplineAreaSeries<Consumption, String>(
        // Plots Spline curves for smooth transitions
        borderColor: const Color(0xFF464646),
        borderWidth: 1,
        color: const Color(0xFFD3D3D3),
        dataSource: const [
          Consumption(day: 'First', usage: 125),
          Consumption(day: 'Mon', usage: 122),
          Consumption(day: 'Tue', usage: 130),
          Consumption(day: 'Wed', usage: 136),
          Consumption(day: 'Thur', usage: 119),
          Consumption(day: 'Fri', usage: 125),
          Consumption(day: 'Sat', usage: 120),
          Consumption(day: 'Sun', usage: 133),
          Consumption(day: 'Last', usage: 125),
        ],
        xValueMapper: (consumption, _) => consumption.day,
        yValueMapper: (consumption, _) => consumption.usage,
        markerSettings: const MarkerSettings(
          color: Color(0xFF464646),
          borderWidth: 1,
          borderColor: Colors.white,
          isVisible: true,
        ),
      ),
    );
  }
}
