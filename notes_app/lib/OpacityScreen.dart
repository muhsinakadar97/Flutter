import 'package:flutter/material.dart';

class OpacityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Opacity Example'),
        ),
        body: Column(
          children: [
             Opacity(
                opacity: 1.0,
                child: Container(
                  color: Colors.blue,
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      'Opaque Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Semi-transparent widget
              Opacity(
                opacity: 0.5, // 50% transparent
                child: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                  child: Center(
                    child: Text(
                      'Semi-Transparent Widget',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              RotatedBox(
                  quarterTurns: 1, // You can change the number of quarter turns (90 degrees each) to rotate differently
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: 'Hello ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 24,
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                  ),
                ),
                TextSpan(
                  text: ' World!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}