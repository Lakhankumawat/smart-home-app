import 'dart:html';

import 'package:domus/src/screens/set_event_screen/theme/calendar_theme.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SetEventScreen extends StatefulWidget {
  static String routeName = '/set-event-screen';
  const SetEventScreen({Key? key}) : super(key: key);

  @override
  State<SetEventScreen> createState() => _SetEventScreenState();
}

class _SetEventScreenState extends State<SetEventScreen> {
  Map<DateTime, List<Event>> eventsForDay = {};
  TextEditingController controller = TextEditingController();

  DateTime focusedDay = DateTime.now();
  DateTime? selectedDay;

  List<Event> getEventsForDay(DateTime? day) {
    return (day == null) ? [] : eventsForDay[day] ?? [];
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
              calendarStyle: CalendarTheme.calendarStyle(),
              startingDayOfWeek: StartingDayOfWeek.monday,
              selectedDayPredicate: (day) => isSameDay(selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  this.selectedDay = selectedDay;
                  this.focusedDay = focusedDay;
                });
              },
              eventLoader: getEventsForDay,
            ),
            SizedBox(height: 8),
            ...getEventsForDay(selectedDay).map(
              (event) => ListTile(
                title: Text(event.type),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (selectedDay == null) {
              print('Please Select a Day!');
            } else {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('Add an Event'),
                  content: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: 'Your Event',
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (controller.text.isNotEmpty) {
                          // Add the Event to the List of Events
                          if (eventsForDay[selectedDay] == null) {
                            // If this is the first event
                            eventsForDay[selectedDay!] = [
                              Event(controller.text)
                            ];
                          } else {
                            eventsForDay[selectedDay]!
                                .add(Event(controller.text));
                          }
                        }

                        Navigator.pop(context);
                        controller.clear();
                        setState(() {});
                      },
                      child: Text(
                        'Ok',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
          label: Text('Submit New Event'),
          icon: Icon(Icons.add_rounded),
          backgroundColor: Color(0xFF464646),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
