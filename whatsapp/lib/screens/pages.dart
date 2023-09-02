import 'package:flutter/material.dart';
import 'package:whatsapp/screens/page_1.dart';
import 'package:whatsapp/screens/page_2.dart';
import 'package:whatsapp/screens/page_3.dart';

//Stack & Buttons

class pages extends StatefulWidget 
{
  const pages({super.key});

  @override
  State<pages> createState() => pagesState();
}

class pagesState extends State<pages> 
{
  
  String inkwell = " ";

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
  
      appBar: AppBar
      (
        title: const Text("Pages"),
      ),

      body: Center
      (

//stack
        child: Stack
        (
          fit: StackFit.passthrough,
          // overflow: Overflow.visible,
          children: <Widget>
          [
             Positioned 
            (
              top: 150,
              left: 120,
              child: IconButton
              (
                icon: Icon(Icons.download),
                iconSize: 40,
                color: Colors.black,
                tooltip: "Download",
                onPressed: () 
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context) => page_3(),
                    )
                  );
                },
              )
            ),

            Positioned
            (
              top: 200,
              left: 120,
//elevated button
              child: ElevatedButton
              (
                child: const Text
                (
                  "Page 1",
                ),
                onPressed: () 
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context) => pages_1(),
                    )
                  );
                },
              )
              
            ),

            Positioned
            (
              top: 250,
              left: 120,
              child: FloatingActionButton.extended
              (
                onPressed: () 
                {
                  Navigator.push
                  (
                    context,
                    MaterialPageRoute
                    (
                      builder: (context) => page_2(),
                    )
                  );
                },
                icon: Icon(Icons.pageview),
                label: Text("Forms"),
              )
            ),

            
             
            Positioned
            (
              child:  Column
              (   
                mainAxisAlignment: MainAxisAlignment.end,
                children: 
                [
                  Padding
                  (
                    padding: const EdgeInsets.only(left: 270),
                    child: ElevatedButton
                    (
                      onPressed: () 
                      {
                        Navigator.pop(context);
                      },
                      child: const Text
                      (
                        "Back"
                      ),
                    )
                  ), 
                ],
              )
            ),

            // const Positioned
            // (
              
            // )
          ],
        ),
        
      )
      );
    
    
  }
}