import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ClipRRectdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ClipRRect Example'),
        ),
        body: Column(
          children: [
               ClipRRect(
                  borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    color: const Color.fromARGB(255, 243, 117, 33),
                    child: Center(
                  child: Text(
                    'Rounded',
                    style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                
              ),
              
            ),
          ),
          ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, "/expanded");
          
            },
            child: Text("Expanded Widget"),
          ),
          SizedBox(height: 20),
         ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, "/opacity");
            },
            child: Text("Opacity Widget"),
          ),
          Text(
            'Hello, Google Fonts!',
            style: GoogleFonts.roboto(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.blue,
            ),
          ),
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, "/routetransition");
          
            },
            child: Text("Animation Route Transition"),
          ),
      SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
                Navigator.pushNamed(context, "/map");
          
            },
            child: Text("Google Map"),
          ),
      
          ],
         ),
      ),
    );
  }
}
 