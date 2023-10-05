import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/'); // Replace '/' with your main route
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 71, 4), // Change this to your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SpinKitDoubleBounce(
              color: Colors.white, // Change this to your desired loading animation color
              size: 50.0, // Change this to your desired loading animation size
            ),
            SizedBox(height: 20.0),
            Text(
              'Your App Name',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
