import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// Defines the CalendarTheme for the Table Calendar

abstract class CalendarTheme {
  static CalendarStyle calendarStyle() {
    return const CalendarStyle(
      outsideDaysVisible: false,
      defaultTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'ABeeZee',
      ),
      todayDecoration: BoxDecoration(
        color: Color(0xFF8CF0C8),
        shape: BoxShape.circle,
      ),
      todayTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'ABeeZee',
      ),
      selectedDecoration: BoxDecoration(
        color: Color(0xFF3DD598),
        shape: BoxShape.circle,
      ),
      selectedTextStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'ABeeZee',
      ),
      weekendTextStyle: TextStyle(
        color: Color(0xFFFF8178),
        fontFamily: 'ABeeZee',
      ),
      rowDecoration: BoxDecoration(color: Color(0xFFF2F2F2)),
    );
  }

  static HeaderStyle headerStyle() {
    return const HeaderStyle(
      formatButtonVisible: false,
      titleCentered: true,
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      headerMargin: EdgeInsets.only(top: 32),
      titleTextStyle: TextStyle(
        fontFamily: 'ABeeZee',
        fontWeight: FontWeight.bold,
        fontSize: 17,
      ),
    );
  }

  static DaysOfWeekStyle daysOfWeekStyle() {
    return const DaysOfWeekStyle(
      decoration: BoxDecoration(
        color: Color(0xFFF2F2F2),
        border: Border.symmetric(
          horizontal: BorderSide(
            width: 0.25,
            color: Color(0xFF696969),
          ),
        ),
      ),
      weekendStyle: TextStyle(
        color: Color(0xFFFF8178),
        fontFamily: 'ABeeZee',
        fontWeight: FontWeight.w500,
      ),
      weekdayStyle: TextStyle(
        color: Colors.black,
        fontFamily: 'ABeeZee',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
