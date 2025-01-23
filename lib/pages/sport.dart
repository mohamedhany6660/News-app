import 'package:flutter/material.dart';
class sport extends StatefulWidget {
  final data ;
  const sport({super.key, this.data});

  @override
  State<sport> createState() => _sportState();
}

class _sportState extends State<sport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.grey,
        centerTitle: true,
       
        title:Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
    Text("sport ",style: TextStyle(fontSize: 30),) ,
     Text("news",style: TextStyle(color: Colors.amber,fontSize: 30),) ,
        ],)
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(widget.data["image"]),
                ),
              ),

              Container(
                padding: EdgeInsets.all(10),
                child: Text("sport is important",style: TextStyle(fontSize: 28),)),
                     Container(
                padding: EdgeInsets.all(10),
                child: Text("sport is every think in live mh araf akteb ayy",style: TextStyle(fontSize: 20),))
            ],
          ),
        ],
      ),
    );
  }
}