import 'package:flutter/material.dart';
import 'package:newss/login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}


class _splashState extends State<splash> {

  @override
  void initState() {
   Future.delayed(Duration(seconds: 3),(){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => loginn(),));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         Stack(
       children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
        child:Image(image: AssetImage("images/spp.jpg"),fit: BoxFit.fill,)
        )
       ],
           ),
      )
    ;
  }
}