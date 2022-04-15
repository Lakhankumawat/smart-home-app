import 'package:domus/config/size_config.dart';
import 'package:domus/src/screens/savings_screen/components/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:awesome_circular_chart/awesome_circular_chart.dart';

class DoughnutChart extends StatefulWidget {
  const DoughnutChart({Key? key, required this.period, required this.totalSavings}) : super(key: key);

  final String period;
  final int totalSavings;

  @override
  State<DoughnutChart> createState() => _DoughnutChartState();
}

class _DoughnutChartState extends State<DoughnutChart> {

  final GlobalKey<AnimatedCircularChartState> _chartKey = GlobalKey<AnimatedCircularChartState>();
  late List<CircularStackEntry> _data;

  @override
  void initState() {
    _data = ChartData().getChartData(widget.period);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedCircularChart(
      key: _chartKey,
      initialChartData: _data,
      chartType: CircularChartType.Radial,

      //size of the doughnut chart
      size: Size(
          getProportionateScreenWidth(90),
          getProportionateScreenHeight(90)
      ),

      //radius of the inner circle
      holeRadius: getProportionateScreenHeight(28),

      holeLabel: '${widget.totalSavings}\$',
      labelStyle: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),

      edgeStyle: SegmentEdgeStyle.round,
      //duration of the animation
      duration: const Duration(milliseconds: 1000),
      percentageValues: true,
    );
  }
}
