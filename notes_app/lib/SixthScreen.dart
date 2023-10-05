import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SixthScreen extends StatelessWidget {
     @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AutoSizeText Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('AutoSizeText Example'),
        ),
        body: Column(
          children: <Widget>[
              Center(
                child: Container(
            width: 200, // Container width
            height: 100, // Container height
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2.0),
            ),
            child: Center(
              child: AutoSizeText(
                'This is some long text that needs to be auto-sized to fit within its container.',
                style: TextStyle(fontSize: 20),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
          
            ),
          ),
              ),
              Tooltip(
  message: 'This is a tooltip',
  child: IconButton(
    icon: Icon(Icons.info),
    onPressed: () {
      // Your onPressed action here
    },
  ),
),
ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/seventh');
            },
            child: Text('Go to next Screen'),
          ),
          ],
        ),
      ),
    );
  }
}