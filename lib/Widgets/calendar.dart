import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      calendarStyle: CalendarStyle(),
      firstDay: DateTime.utc(2019, 01, 01),
      lastDay: DateTime.utc(2040, 05, 13),
      focusedDay: DateTime.now(),
    );
  }
}
