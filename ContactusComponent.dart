import 'package:flutter/material.dart';

class Header1 extends StatelessWidget {
  final String name; 
  const Header1(this.name); 

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding:EdgeInsets.symmetric(horizontal:10, vertical:10),
      width: double.infinity,
      color: Colors.green[700],
      margin: EdgeInsets.only(bottom:20),
      child: Text(name, style: TextStyle(color: Colors.white, fontSize: 23)),
    
    );
  }
}

class Box extends StatelessWidget {
  final double height; 
  final String text; 
  const Box(
    this.height, 
    this.text 
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10,bottom:0),
      width: double.infinity,
      height: height,
      decoration: BoxDecoration(border:Border.all(color: Colors.green[700],width: 3)),
      padding: EdgeInsets.symmetric(horizontal:10, vertical:4),
      child: Text(text,style: TextStyle(color: Colors.blueGrey,fontSize: 18,fontWeight: FontWeight.bold),)
    );
  }
}

class Detail extends StatelessWidget {
    final IconData icon; 
    final String first; 
    final String second; 

  const Detail(
        this.icon, 
        this.first,
        this.second
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20),
      child:Row(children: <Widget>[
        Icon(
          icon, 
          size:40,
          color: Colors.green[700],
        ),
       Container(
       margin: EdgeInsets.only(left:10),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
       children: <Widget>[
       Text(first, style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18)),

       Text(second,style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),



       ],)
       ), 
        
      ],)
    );
  }
}


