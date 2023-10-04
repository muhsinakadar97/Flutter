import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class NewScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<NewScreen> {
  DateTime _selectedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar Example'),
      ),
      body: Center(
        child: Column(
          children: [
            TableCalendar(
              calendarFormat: _calendarFormat,
              focusedDay: _selectedDay,
              firstDay: DateTime(2023, 1, 1), // Replace with your desired start date
              lastDay: DateTime(2023, 12, 31), // Replace with your desired end date
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onPageChanged: (focusedDay) {
                setState(() {
                  _selectedDay = focusedDay;
                });
              },
            ),
            // Add other widgets or functionality below the calendar
          ],
        ),
      ),
    );
  }
}