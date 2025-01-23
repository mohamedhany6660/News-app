import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  final p1 ;
  const page1({super.key, this.p1});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Container(
          child:ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child:  Image.asset(widget.p1["image1"]),
          )
          
        )
        
        ,Text(widget.p1["first"],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),
        textAlign: TextAlign.start,),
SizedBox(height: 20,)
,       Text(widget.p1["sacand"])
      ]),
    );
  }
}