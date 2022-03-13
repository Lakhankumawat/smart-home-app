import 'dart:html';

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SetEventScreen extends StatefulWidget {
  static String routeName = '/set-event-screen';
  const SetEventScreen({Key? key}) : super(key: key);

  @override
  State<SetEventScreen> createState() => _SetEventScreenState();
}

class _SetEventScreenState extends State<SetEventScreen> {
  DateTime? selectedDay;
  DateTime focusedDay = DateTime.now();
  List<Event>? eventList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          iconTheme: Theme.of(context).iconTheme,
          title: Text(
            'Set Events',
            style: Theme.of(context).textTheme.headline1,
          ),
          elevation: 0,
          actions: <Widget>[
            CloseButton(),
          ],
        ),
        body: Column(
          children: [
            TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: focusedDay,
              calendarStyle: CalendarStyle(
                outsideDaysVisible: false,
                todayDecoration: BoxDecoration(
                  color: Color(0xFFAEFFDF),
                  shape: BoxShape.circle,
                ),
                todayTextStyle: TextStyle(
                  color: Colors.black,
                ),
                selectedDecoration: BoxDecoration(
                  color: Color(0xFF3DD598),
                  shape: BoxShape.circle,
                ),
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              selectedDayPredicate: (day) {
                return isSameDay(selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  this.selectedDay = selectedDay;
                  this.focusedDay = focusedDay;
                });
              },
              eventLoader: (day) {
                if (day.weekday == DateTime.monday &&
                    day.month == DateTime.march) {
                  return [Event('Cyclic event')];
                }

                return [];
              },
            ),
            SizedBox(height: 8),
            // ListView.builder(
            //   itemBuilder: (_, index) {
            //     return ListTile(
            //       title: Text('$index'),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
