import 'package:domus/src/screens/stats_screen/components.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsChart extends StatelessWidget {
  const StatsChart({
    Key? key,
    required this.title,
    this.subtitle,
    this.trailing,
    required this.plotOffset,
    required this.content,
    this.paddingBelow,
  }) : super(key: key);

  final String title;
  final Widget? subtitle;
  final Widget? trailing;
  final double plotOffset;
  final XyDataSeries<Consumption, String> content;
  final double? paddingBelow;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text(
              title,
              style: const TextStyle(
                fontFamily: 'ABeeZee',
              ),
            ),
            subtitle: subtitle,
            trailing: trailing,
          ),
          Expanded(
            child: SfCartesianChart(
              // Plots the graph
              margin: const EdgeInsets.all(0),
              plotAreaBorderWidth: 0,
              primaryXAxis: CategoryAxis(
                plotOffset: plotOffset,
                isVisible: false,
              ),
              primaryYAxis: NumericAxis(
                isVisible: false,
              ),
              series: <XyDataSeries<Consumption, String>>[
                content,
              ],
              tooltipBehavior: TooltipBehavior(
                enable: true,
                header: '',
                canShowMarker: false,
                format: 'point.x : point.y kWh',
                textStyle: const TextStyle(
                  fontFamily: 'ABeeZee',
                ),
              ),
            ),
          ),
          SizedBox(height: paddingBelow),
        ],
      ),
    );
  }
}
