import 'package:flutter/material.dart';
class Header extends StatelessWidget {
  final String name; 
  const Header(this.name); 

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

class First_part extends StatelessWidget {
  final String two;     
  const First_part(this.two); 
  @override
  Widget build(BuildContext context) {
    return 
        Container(
        margin: EdgeInsets.only(left:10),
        child:Text(
          two, style: TextStyle(color: Colors.green[700], fontSize: 14)
        ), 
        );
        
  }
}
class Descriptions extends StatelessWidget {
  double widt; 
  String name2; 
   Descriptions(
    this.widt,
    this.name2,
  ) ;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        margin: EdgeInsets.only(top:10),
        child: LimitedBox(
          maxHeight:80,
          maxWidth: widt,
          child: Text(name2,style: TextStyle(color: Colors.green[700]),)
          
        ),
      )
    ],);
  }
}


class Learnmore extends StatelessWidget {
  double ri = 0; 
   Learnmore(
    this.ri, 
   ); 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: ri),
      width: 90,
      height: 40,
      color: Colors.green[700],
      child: Center(
        child: Text('Learn more', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 10),)
    ),
    );
  }
}

class Paragraph extends StatelessWidget {
  final String text;  
  const Paragraph(
    this.text,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom:20),
      child: Text(text),  
    );
  }
}


class Images extends StatelessWidget {
  final String url;
  final double num; 
  const Images(
        this.num, 

    this.url, 
  ); 

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(top:20, left:num,right: 0),
    child:Row(children: <Widget>[
      Container(
      margin:EdgeInsets.only(left:0,right:0),
      child: Image.network(url
      ,width:60, height: 60,),
      ), 
      
      
        
    ],)
       );
  }
}


class Second extends StatelessWidget {
  final IconData hi; 
  final String text;
  const Second(
    this.hi,
    this.text, 
  
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Icon(
          hi,
          size: 40,
          color: Colors.green[700],
           ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: First_part(text)),
        ],
      ),
    );
  }
}
class FollowUs extends StatelessWidget {
  const FollowUs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Text('Follow us ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ))));
  }
}

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(left: 100),
            child: Images(10,
                'https://smartstart.com.kh/smartstart/images/new-icon/Facebook.png')),
        Images(0,
            'https://smartstart.com.kh/smartstart/images/new-icon/Insta.png'),
        Images(0,
            'https://smartstart.com.kh/smartstart/images/new-icon/YouTube.png')
      ],
    );
  }
}
