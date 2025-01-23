import 'package:flutter/material.dart';
import 'package:newss/model_page.dart/page1.dart';
import 'package:newss/pages/healhy.dart';
import 'package:newss/pages/sport.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  List mo =[
  {"image": "images/1a.jpg","title":"sport"},
   {"image": "images/2a.jpg","title":"sport"},
    {"image": "images/3a.jpg","title":"sport"},
     {"image": "images/4a.jpg","title":"sport"},
      {"image": "images/1a.jpg","title":"sport"},
       {"image": "images/1a.jpg","title":"sport"},
        {"image": "images/1a.jpg","title":"sport"},


  ];

  List mohany =[
    {"image1":"images/1b.jpg","first":"Al-Ahly Club wins with two goals","sacand":"Hussein Al-Shahat and Percy Taw scored two goals and gave Al-Ahly the lead at the expense of the Saudi Al-Ittihad..."},
    {"image1":"images/1s.jpg","first":"How to be successful?","sacand":"In order to be successful, you must pay attention to the smallest important details.."},
    {"image1":"images/1f.jpg","first":"Continuing famine","sacand":"In some African countries, the rate of famine is increasing, and the reasons are many..."},
    {"image1":"images/2f.jpg","first":"Presidential election","sacand":"Egypt and some countries pass through these periods during the election"},
    {"image1":"images/1b.jpg","first":"fsfdhgd","sacand":"In order to be successful, you must pay attention to the smallest important details.."},
    {"image1":"images/1a.jpg","first":"alahly is important","sacand":"In order to be successful, you must pay attention.."},
     {"image1":"images/1b.jpg","first":"fsfdhgd","sacand":"In order to be successful, you must pay attention"},
    {"image1":"images/1a.jpg","first":"mo hany","sacand":"In order to be successful, you must pay attention"},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.grey,
        centerTitle: true,
        elevation: 0.0,
       
        title:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
    Text("news ",style: TextStyle(fontSize: 30),) ,
     Text("app",style: TextStyle(color: Colors.amber,fontSize: 30),) ,
        ],)
      ),
      body: ListView(
        children: [
           SizedBox(height: 10,),
          Container(
            height: 130,
            width: 550,
            child: ListView.builder( 
              scrollDirection: Axis.horizontal,
            itemCount: mo.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(5),
                height: 80,
                width: 140,

                child: InkWell(
                  onTap: () {
                    if(index==0){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => sport(data: mo[index],),));
                    }
                      else if (index==1){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => healhy(),));
                    }
                      else if (index==2){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => healhy(),));
                    }
                    else if (index==3){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => healhy(hel: mo[index],),));
                    }
                  },
                  child:ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child:   Image.asset(mo[index]["image"],height: 100,width: 120,fit:BoxFit.fill,) ,) 
           
                ,),
              );
            },
            ),
          
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:EdgeInsets.all(7),
                  child: Text("trending News!",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold) ,)),
          
                  Container( child: Text("View All",style: TextStyle(color: Colors.blue,fontSize: 17),textAlign: TextAlign.end,),)
              ],
            ),
          ),
Container(
  child:ListView.builder(
    physics:NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: mohany.length,
    itemBuilder:(context, index) {
    return  Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(30),
              child: Row(
                children: [
                   InkWell(
                    onTap: () {
                      if(index==0){
                       Navigator.of(context).push(MaterialPageRoute(builder: (context) => page1(p1: mohany[index],),));
                        
                      }
                    },
                     child: Container(
                   
                      padding: EdgeInsets.only(left: 10,right:10 ,bottom: 10,top: 10 ),
                      child:ClipRRect(
                        
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(mohany[index]["image1"],width: 140,height: 100,fit: BoxFit.cover)) ,),
                   )
                    
                    
                    ,
                  Expanded(
                    flex: 2,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(mohany[index]["first"],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),
                         Text(mohany[index]["sacand"]),
                      ],
                    )),
                ],
              ),
            );
  },) ,),

         
          
          

             
        ],
      )
    );
  }
}
