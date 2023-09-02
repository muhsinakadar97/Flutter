import 'package:flutter/material.dart';

class page_3 extends StatefulWidget 
{
  const page_3({super.key});

  @override
  State<page_3> createState() => _page_3State();
}

class _page_3State extends State<page_3> 
{
  String inkwell = " ";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: AppBar
      (
        title: Text("Page 3"),
      ),

      body: Center
      (
          child: InkWell
              (
                splashColor: Colors.black,
                highlightColor: Colors.green,
                child: Icon
                (
                  Icons.pageview,
                  size: 40,
                ),
               onTap: () {
                 setState(() {
                   inkwell='Inkwell Tapped';
                 });
               },
              ),
      ),
    );
  }
}