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
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                });
              },
            ),
            SizedBox(height: 40),
            Text("Selected Date : ${_selectedDay.toLocal()}",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cliprrect');
              },
              child: Text("ClipRRect"),
            )
          ],
        ),
      ),
    );
  }
}






