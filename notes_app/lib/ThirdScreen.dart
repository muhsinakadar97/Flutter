import 'package:flutter/material.dart';
import 'ThirdScreen.dart';


class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Text('Third Screen')),
      body: Column(
        children: <Widget>[
          Text('This is the Third Screen'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go Back'),
          ),
        ],
      ),
    );
  }
}
