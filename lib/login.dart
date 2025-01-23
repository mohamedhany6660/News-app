import "package:flutter/material.dart";
import "package:newss/Ahaccount.dart";
import "package:newss/homepage.dart";
class loginn extends StatefulWidget {
  const loginn({super.key});

  @override
  State<loginn> createState() => _loginnState();
}

class _loginnState extends State<loginn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
       
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
    Text("news ",style: TextStyle(fontSize: 30),) ,
     Text("app",style: TextStyle(color: Colors.amber,fontSize: 30),) ,
        ],)
        
    
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Text("sign in",style: TextStyle(fontSize: 40),)
],),
SizedBox(height: 50,),
      TextFormField(
        
        decoration: InputDecoration(
          labelText: "user name",
         focusColor: Colors.blue,
          prefixIcon:Icon( Icons.person),
          //hintText: "user name",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue,),
            borderRadius: BorderRadius.circular(50)),

          border:OutlineInputBorder(borderRadius: BorderRadius.circular(50)) ),
      ),

      SizedBox(height: 30,),
       TextFormField(
        
        decoration: InputDecoration(
          labelText: "password",
         focusColor: Colors.blue,
          prefixIcon:Icon( Icons.password),
          //hintText: "user name",
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue,),
            borderRadius: BorderRadius.circular(50)),

          border:OutlineInputBorder(borderRadius: BorderRadius.circular(50)) ),
      ),
      SizedBox(height: 6,),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Text("forget password?")
      ],),
  SizedBox(height: 5,),
      MaterialButton(onPressed:(){
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>homepage() ,));

      },
      
      color: Colors.grey,
      height: 43,
      minWidth: 140,
      child:Text("log in",style: TextStyle(color: Colors.white,fontSize: 23),) ,)
          ,

          SizedBox(height: 13,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("Alarady have account"),
        TextButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(context) => Ahaccount(),));
        }, child:Text("sign"))
      ],)
        ]),
      ),
    );
  }
}