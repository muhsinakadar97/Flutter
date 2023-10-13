import 'package:flutter/material.dart';

class ExpandedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded Example'),
        ),
        body: Column(
          children: [
            // Widget 1 without Expanded
              Container(
                height: 50.0,
                color: Colors.blue,
              ),
               // Widget 2 with Expanded
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
               // Widget 3 without Expanded
              Container(
                height: 50.0,
                color: Colors.orange,
              ),
          ]
        ),
      ),
    );
  }
      
}