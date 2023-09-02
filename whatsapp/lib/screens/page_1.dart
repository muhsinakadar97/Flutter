import 'package:flutter/material.dart';

//Rich text & Images & Text

class pages_1 extends StatelessWidget 
{
  const pages_1({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("Page 1"),
      ),

      body: Center
      (
        child: Stack
        (  
          fit: StackFit.passthrough,  
          // overflow: Overflow.visible,  
          children: <Widget>
          [ 
 
          Positioned
          (
            top: 30,
            left: 30,
//rich text
            child: RichText
          (
            text: const TextSpan
            (
              style: TextStyle
              (
                color: Colors.grey,
                fontSize: 15,
              ),
              children: <TextSpan>
              [
                TextSpan
                (
                  text: "Hello",
                ),
                TextSpan
                (
                  text: " from",
                ),
                TextSpan
                (
                  text: "WHATSAPP",
                  style: TextStyle
                  (
                    color: Colors.green,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]
            ),
          ),
          ),
          
          Positioned
          (
            top: 70,
            left: 30,
// image
            child: Column
            (
              children: <Widget>
              [
                Image.asset
                (
                  'assets/images/wallpaper.jpg',
                  height: 500,
                  width: 300, 
                ),
               
              ],
            ),

          ),

          const Positioned
          (
            bottom: 62,
            right: 64,
//text
            child: Text
          (
            "Whatsapp",
            style: TextStyle
            (
              fontSize: 30,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              letterSpacing: 8,

              wordSpacing: 15,
              // backgroundColor: Color.fromARGB(255, 205, 255, 247),
              shadows: 
              [
                Shadow
                (
                  color: Colors.black,
                  offset: Offset(2,1),
                  blurRadius: 15,
                )
              ]
            ),
          ),
          ),
          ]
        ),
      ),
    );
  }
}