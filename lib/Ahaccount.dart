import "package:flutter/material.dart";
class Ahaccount extends StatelessWidget {
  const Ahaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text("Alarady have account"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sign your account",style: TextStyle(fontSize: 36),),
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
          obscureText: true,
          maxLength: 12,
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
    
      ],),
  SizedBox(height: 40,),
      MaterialButton(onPressed:(){},
      
      color: Colors.grey,
      height: 43,
      minWidth: 140,
      child:Text("log in",style: TextStyle(color: Colors.white,fontSize: 23),) ,)
          ,

      ]),
    );
  }
}