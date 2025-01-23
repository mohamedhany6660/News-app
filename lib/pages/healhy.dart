import 'package:flutter/material.dart';

class healhy extends StatefulWidget {
  final hel ;
  const healhy({super.key, this.hel});

  @override
  State<healhy> createState() => _healhyState();
}

class _healhyState extends State<healhy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.grey,
        centerTitle: true,
       
        title:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
    Text("healhy ",style: TextStyle(fontSize: 30),) ,
     Text("news",style: TextStyle(color: Colors.amber,fontSize: 30),) ,
        ],)
      ),
      body:ListView(
        children: [
          Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(widget.hel["image"]),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: Text("healhy is important",style: TextStyle(fontSize: 28),)),
                     Container(
                padding: EdgeInsets.all(10),
                child: Text("healhy is every think in live mh araf akteb ayy",style: TextStyle(fontSize: 20),))
            ],
          ),
        ],
      ), 
    );
  }
}