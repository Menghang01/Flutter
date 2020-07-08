import 'package:flutter/material.dart';

class PhotoStack extends StatelessWidget {
  final String url; 
  final String title; 
  const PhotoStack(
    this.url, 
    this.title, 
  ) ;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        width: double.infinity,
        height: 200,
        color: Colors.green[700],
        child: Container(
          margin:EdgeInsets.only(left:20,top: 70,right: 20),
          child :Text(title,style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),
      ),)),
      Positioned(
      left: 165,
      bottom: 0,
      
      child : Image.network(url,width: 300,height:205)),
      ],);
  }
}