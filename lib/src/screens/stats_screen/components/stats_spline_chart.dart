import 'package:domus/src/screens/stats_screen/components/electricity_usage.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsSplineChart extends StatelessWidget {
  const StatsSplineChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          const ListTile(
            title: Text(
              'Daily',
              style: TextStyle(
                fontFamily: 'ABeeZee',
              ),
            ),
            subtitle: Text(
              'Electricity usage',
              style: TextStyle(
                fontFamily: 'ABeeZee',
              ),
            ),
            trailing: Text(
              '128',
              style: TextStyle(
                fontFamily: 'ABeeZee',
              ),
            ),
          ),
          SfCartesianChart(
            // Plots the graph
            margin: const EdgeInsets.all(0),
            plotAreaBorderWidth: 0,
            primaryXAxis: CategoryAxis(
              plotOffset: -20,
              isVisible: false,
            ),
            primaryYAxis: NumericAxis(
              minimum: 0,
              maximum: 45,
              // interval: 20,
              isVisible: false,
            ),
            series: <SplineAreaSeries<ElectricityUsage, String>>[
              SplineAreaSeries(
                // Plots Spline curves for smooth transitions
                color: Colors.grey[400],
                dataSource: const [
                  ElectricityUsage(day: 'Mon', consumption: 22),
                  ElectricityUsage(day: 'Tue', consumption: 30),
                  ElectricityUsage(day: 'Wed', consumption: 36),
                  ElectricityUsage(day: 'Thur', consumption: 19),
                  ElectricityUsage(day: 'Fri', consumption: 25),
                  ElectricityUsage(day: 'Sat', consumption: 20),
                  ElectricityUsage(day: 'Sun', consumption: 33),
                  ElectricityUsage(day: 'New Mon', consumption: 28),
                  ElectricityUsage(day: 'New Tue', consumption: 36),
                  ElectricityUsage(day: 'New Wed', consumption: 22),
                  ElectricityUsage(day: 'New Thur', consumption: 15),
                  ElectricityUsage(day: 'New Fri', consumption: 40),
                  ElectricityUsage(day: 'New Sat', consumption: 32),
                  ElectricityUsage(day: 'New Sun', consumption: 35),
                ],
                xValueMapper: (usage, _) => usage.day,
                yValueMapper: (usage, _) => usage.consumption,
                markerSettings: const MarkerSettings(
                  color: Colors.black,
                  isVisible: true,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
