import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final double number; 
  final String name; 
  final double size; 
  const Menu(
    this.number, 
    this.name, 
    this.size, 
  );

  @override
  Widget build(BuildContext context) {
    return Container(margin:EdgeInsets.only(top:15,left:number),
    child: Text(name, style: TextStyle(color: Colors.green[700],fontSize: size,fontWeight:FontWeight.bold),
    ));
  }
}


class Green extends StatelessWidget {
  final String text; 
  const Green(
    this.text,
  ) ;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.green[700],fontWeight: FontWeight.bold));
  }
}

class Black extends StatelessWidget {
  final String text; 
  const Black(
    this.text,
  ) ;

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 13));
  }
}

class SimSmart extends StatelessWidget {
  const SimSmart(
  
  ) ;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
          Container(
            width:330,
            height: 45,
            color: Colors.green[700],
          ), 
          Image.network('https://smartstart.com.kh/smartstart/images/new-icon/Smart.png', width: 70,height: 50)

        ],)
        
      );
  }
}


class MenuRow extends StatelessWidget {
  const MenuRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Menu(40,'Apply Now',12),
      Menu(20,'FAQ',12),
      Menu(20,'Previous Winners',12),
      Menu(20,'Contact US',12),
      Menu(20,'EN',8),
    ],);
  }
}

class YoungInno extends StatelessWidget {
  const YoungInno({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(left:145),
    child:Text('Young Innovator Program',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
    );
  }
}

class Ftitle extends StatelessWidget {
  const Ftitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:125, right:50,top:20),
      child: Row(children: <Widget>[
       Text('Smart', style: TextStyle(color: Colors.green[700], fontSize: 27, fontWeight: FontWeight.bold),),
       Text('Start', style: TextStyle(fontSize: 25),),
       Stack(children: <Widget>[
           Positioned(
            left: 10,
            child: Icon(
            Icons.play_arrow,
            size: 40,
            
          ),),
          Container(
        
          child:Icon(
            Icons.play_arrow,
            size: 40,
            color: Colors.green,
          )),
        
          
       ], )
      ],)
    );
  }
}








