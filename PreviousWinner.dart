import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'PreviousWinnerComponent.dart' ; 

class PreviousWinnerPage extends StatefulWidget {
  PreviousWinnerPage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PreviousWinnerPage> {
  int data = 0; 
  static List<Widget> widgetOptions = <Widget>[
    Container(
          margin: EdgeInsets.only(top:15,bottom:30),
          height:350, 
          child:ListView (
          scrollDirection: Axis.horizontal,
          children: <Widget>[
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/GoSoccer.png', 'GoSoccer'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Ligo.png', 'Ligo'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Prestige.png', 'Prestigue'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Propey.png', 'Propey'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Spare.png', 'Spare'),
                

                      ],
                    )
                  ), 


    Container(
          margin: EdgeInsets.only(top:15,bottom:30),
          height:350, 
          child:ListView (
          scrollDirection: Axis.horizontal,
          children: <Widget>[
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Haystome.png', 'Haystome'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Homex.png', 'Homex'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Malis.png', 'Malis'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/SomJot.png', 'SomJot'),
          Scroll('https://smartstart.com.kh/smartstart/images/new-icon/Tosrean.png', 'Tosrean'),
                

                      ],
                    )
                  ), 

    
  ];

  void _onItemTapped(int index) {
    setState(() {
      data = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the PreviousWinnerPage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        

          children: <Widget>[
        


            Container(
            margin: EdgeInsets.only(top:15),
            child: Stack(children: <Widget>[
              Image.network('https://smartstart.com.kh/smartstart/images/new-icon/hackathon.jpg'), 
              ClipPath(
              child: Container(
                width: 150,  
                height: 165,
                color: Colors.green[700],
                child: Center(child: Text('Previous\nWinner',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,)))
              
              ),
               clipper: new Myclipper(), 
                
            
            )])), 
 
              Container(
                
                padding: EdgeInsets.symmetric(vertical:20, horizontal:30),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(children: <Widget>[


                  Text('Top 5 Winners',style: TextStyle(color: Colors.green[700],fontSize: 25)),
                  Container(
                  width: 80,
                  height: 30,

                  margin: EdgeInsets.only(left:10),
                 
                  child: RaisedButton(
                    onPressed: (){
                      _onItemTapped(0); 
                    },
                    child: Text(
                      'Cycle 1',
                      style: TextStyle(
                        color: ((){
                          if(data == 0)
                          {
                            return Colors.white; 
                          }
                          else 
                          {
                            return Colors.green[700]; 
                          }
                        }())
                      ),), 
                   
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.green[700])), 
                    
                    color: ((){
                    if(data == 0)
                    {
                    
                      return Colors.green; 
                      
                    }
                    else
                    {
                      return Colors.white;                    }

                    }()),
                  )),

                Container(
                   width: 80,
                   height: 30,
                   margin: EdgeInsets.only(left:5),
                   child: RaisedButton(
                    onPressed: (){
                      _onItemTapped(1); 
                    },
                    child: Text('Cycle 2', style: TextStyle(color: Colors.green[700])),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.green[700])),

                    color: ((){
                    if(data == 0)
                    {
                      return Colors.white; 
                    }
                    else
                    {
                      return Colors.green;                    }

                    }()),
                  )), 

                    
                    
                  
                
                  
                 // Cycle('Cycle1'), 
             
            
                 // Cycle('Cycle2'),
                 

                  ],),

                 widgetOptions.elementAt(data), 
           


                Picture('https://smartstart.com.kh/smartstart/images/new-icon/Final-cycle-1.jpg'),
                Text('Final Pitch',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                Picture('https://smartstart.com.kh/smartstart/images/new-icon/Grand-final-cycle-1.jpg'),
                Text('Grand Final',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),), 

                ],

                
              ),



              ),

           SimSmart(),
          ]
              ),

        ),
);
  }
}

class Myclipper  extends CustomClipper<Path>{
  @override
  Path getClip(Size size){
    var path = new Path(); 
    
      path.lineTo(size.width * 1.8  ,0.0);
      path.lineTo(0.0, size.height*1.5);
      path.close(); 
      return path; 
    
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
  {
    return false; 
  }
}