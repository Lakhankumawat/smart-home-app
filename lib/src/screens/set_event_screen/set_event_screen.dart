import 'package:domus/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:domus/src/screens/set_event_screen/components.dart';

class SetEventScreen extends StatefulWidget {
  static String routeName = '/set-event-screen';
  const SetEventScreen({Key? key}) : super(key: key);

  @override
  State<SetEventScreen> createState() => _SetEventScreenState();
}

class _SetEventScreenState extends State<SetEventScreen> {
  Map<DateTime, List<Event>> eventsForDay = {};
  TextEditingController controller = TextEditingController();

  DateTime today = DateTime.now();
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        iconTheme: Theme.of(context).iconTheme,
        title: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15),
          child: Text(
            'Set Events',
            style: SetEventScreenTheme.appBarTextStyle,
          ),
        ),
        elevation: 0,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 20, right: 15),
            child: CloseButton(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          TableCalendar(
            firstDay: DateTime.utc(today.year, today.month),
            lastDay: DateTime.utc(today.year + 1, today.month),
            focusedDay: focusedDay,
            sixWeekMonthsEnforced: true,
            calendarStyle: CalendarTheme.calendarStyle(),
            headerStyle: CalendarTheme.headerStyle(),
            daysOfWeekStyle: CalendarTheme.daysOfWeekStyle(),
            daysOfWeekHeight: 32,
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
          const SizedBox(height: 32),
          ...getEventsForDay(selectedDay).map(
            (event) => EventListTile(text: event.toString()),
          ),
          const SizedBox(height: 48),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        extendedPadding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(48),
        ),
        onPressed: () {
          if (selectedDay == null) {
            showDialog(
              context: context,
              builder: (context) => const SelectDayDialog(),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => AddEventDialog(
                controller: controller,
                onCancel: () => Navigator.pop(context),
                onAccept: () {
                  if (controller.text.isNotEmpty) {
                    // Add the Event to the List of Events
                    if (eventsForDay[selectedDay] == null) {
                      // If this is the first event
                      eventsForDay[selectedDay!] = [Event(controller.text)];
                    } else {
                      eventsForDay[selectedDay]!.add(Event(controller.text));
                    }
                  }

                  Navigator.pop(context);
                  controller.clear();
                  setState(() {});
                },
              ),
            );
          }
        },
        label: const Text('Add New Event'),
        icon: const Icon(Icons.add_rounded),
        backgroundColor: const Color(0xFF464646),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      resizeToAvoidBottomInset: false,
    );
  }
}
