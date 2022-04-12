
import 'package:domus/src/screens/savings_screen/components/chart_data.dart';
import 'package:flutter/material.dart';


class DevicesList extends StatelessWidget {
  DevicesList({Key? key}) : super(key: key);
  final List devices = ChartData().devices;
  final List color = ChartData().colors;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: devices.length,
        padding: const EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index){
          return SizedBox(
            height: 25,
            child: ListTile(
                    visualDensity: const VisualDensity(vertical: -4,horizontal: -4),
                    dense: true,
                    contentPadding: const EdgeInsets.only(left: 2),
                    minLeadingWidth: 10,
                    leading: SizedBox(
                      width: 20,
                      height: 15,
                      child: Card(
                        color: color[index],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)
                        ),
                      )
                    ),
                    title: Text(
                      devices[index],
                      style: const TextStyle(
                        color: Color.fromRGBO(150, 167, 175, 1),
                        fontSize: 14
                      ),
                    ),
            ),
          );
        });
  }
}
