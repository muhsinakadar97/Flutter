import 'package:flutter/material.dart';
class SeventhScreen extends StatelessWidget {
     @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seventh Screen',
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // Specify the desired height
          child: AppBar(
            title: Text('Seventh Screen'),
            // Other app bar properties
          ),
        ),
        body: MyCheckboxWidget(),
      ),
    );
  }
}
class MyCheckboxWidget extends StatefulWidget {
  @override
  _MyCheckboxWidgetState createState() => _MyCheckboxWidgetState();
}

class _MyCheckboxWidgetState extends State<MyCheckboxWidget> {
  bool isChecked = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Checkbox Example',
            style: TextStyle(fontSize: 20),
          ),
          Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          Text(
            'Checkbox is checked: $isChecked',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Switch State: ${isSwitched ? 'ON' : 'OFF'}',
            style: TextStyle(fontSize: 20),
          ),
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/calender');
            },
            child: Text('Go to calender Screen'),
          ),
         
        ],
      ),
    );
  }
}
