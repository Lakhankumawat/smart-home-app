import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// Defines the CalendarTheme for the Table Calendar

class CalendarTheme {
  static CalendarStyle calendarStyle() {
    return CalendarStyle(
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
    );
  }

  static HeaderStyle headerStyle() {
    return HeaderStyle();
  }

  static DaysOfWeekStyle daysOfWeekStyle() {
    return DaysOfWeekStyle();
  }
}
