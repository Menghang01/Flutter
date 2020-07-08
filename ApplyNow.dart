import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'ApplyNowComponent.dart';
import 'Home_Page_Components.dart'; 

class ApplyNowPage extends StatefulWidget {
  ApplyNowPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ApplyNowPage> {
  int _counter = 0;

  get container => null;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
          // Here we take the value from the ApplyNowPage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
              Ftitle(),
              YoungInno(),
              MenuRow(),
              Container(
                margin: EdgeInsets.only(top:20), 
                child: PhotoStack()

              ),

              Container(
                margin: EdgeInsets.only(top:15,bottom:20),
                padding: EdgeInsets.symmetric(vertical:20,horizontal:27),
              
                child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                      Container(
                      margin:EdgeInsets.only(bottom:20),
                      child : Green('So, do you want to be a tech entreprenuer?')),
                      Black('Smarstart is a nine-month program that will help turn your ideas into sucessful startup.'),
                      Container(
                      width: double.infinity,
                      child:Row(children: <Widget>[
                       Black('If you think you have what it takes,'), 
                       Green('apply here'), 
                       Black('for a life-'),
                      ],) ),

                      Black('changing experience  !'),
                      Container(
                        margin: EdgeInsets.only(top:10),
                        child:Row(children: <Widget>[
                          Black('To view the application form beforehand, download'), 
                          Green(' here'),
                          Black('. We')
                        ],)
                      ), 
                      Black('only accept online applications.'),
                      Black('To get help with coming up with the next big tech innovation,'),
                      Row(children: <Widget>[
                      Black('use this'),
                      Green(' simple template.')

                      ],

                      ),
                      Image.network('https://smartstart.com.kh/smartstart/images/new-icon/Apply.png'),
                  ],
                )),
                SimSmart(),            

          ]
              ),

        ),
);
  }
}

class PhotoStack extends StatelessWidget {
  const PhotoStack({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.network('https://smartstart.com.kh/smartstart/images/new-icon/apply.jpg',width:double.infinity,height:300), 
      ClipPath(
      child: Container(
        margin: EdgeInsets.only(top:15),
        width: 170,
        height: 273,
        color: Colors.green[700],
        child: Center(
          child :Text('Apply Now',style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold),

      )

      )
      
      ,), 
      clipper: new Piece()
      ),
       
      ],);
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

class Title extends StatelessWidget {
  const Title({
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
class Piece extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(size.width*1.9, 0.0);
    path.lineTo(0.0,size.height*1.5); 
    path.close();  
    return path; 
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


