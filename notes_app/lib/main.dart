// main.dart
import 'package:flutter/material.dart';
import 'package:notes_app/FifthScreen.dart';
import 'package:notes_app/slidable_themesScreen.dart';
import 'HomeScreen.dart';
import 'SecondScreen.dart';
import 'ThirdScreen.dart';
import 'FourthScreen.dart';
import 'ListScreen.dart';
import 'ChartScreen.dart';
import 'SixthScreen.dart';
import 'SplashScreen.dart';
import 'SeventhScreen.dart';
import 'NewScreen.dart';
import 'ClipRRectScreen.dart';
import 'ExpandedScreen.dart';
import 'OpacityScreen.dart';
import 'SampleScreen.dart';
import 'MapScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation Example',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/': (context) => HomeScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/fourth': (context) => FourthScreen(),
        '/list' :(context) => ListScreen(),
        '/chart' : (context) => ChartScreen(),
        '/slidable' : (context) => SlidableDemo(),
        '/fifth' : (context) => FifthScreen(),
        '/sixth' : (context) => SixthScreen(),
        '/seventh' : (context) => SeventhScreen(),  
        '/new' : (context) => NewScreen(),
        '/cliprrect' : (context) => ClipRRectdemo(),
        '/expanded' : (context) => ExpandedScreen(),
        '/opacity' : (context) => OpacityScreen(),
        '/routetransition' : (context) => SampleScreen(),
        '/map' : (context) => MapScreen(),
      },
    );
  }
}
