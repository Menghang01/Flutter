import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'PreviousWinnerComponent.dart' ; 
import 'Home_Page_Components.dart'; 
import 'ContactUsComponent.dart'; 


class ContactUsPage extends StatefulWidget {
  ContactUsPage({Key key, this.title}) : super(key: key);

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

class _MyHomePageState extends State<ContactUsPage> {
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
          // Here we take the value from the ContactUsPage object that was created by
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
          
           padding: EdgeInsets.symmetric(vertical:25,horizontal:25), 
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               Header('Contact US'), 
               Detail(Icons.phonelink_ring,'Phone','+85510234075'),
               Detail(Icons.email,'Email','smartstart@smart.com.kh'),
               Detail(Icons.web,'Website','smartstart.com.kh'),
               Header('or fill the form'),

               Box(35,'Name'),
               Box(35,'Email'),
               Box(35,'Phone Number'),
               Box(125,'Message'),

               Container(
                 margin: EdgeInsets.only(top:10,bottom:10),
                 width: 100,
                 height: 45,
                 color: Colors.green[700],
                 padding: EdgeInsets.symmetric(vertical:15,horizontal:25),
                 child: Text('Submit',style: TextStyle(color: Colors.white)),
               ),
               Header('Location'),
               Image.network('src'), 
               FollowUs(),
               SocialMedia(),

               
               



           ],),
          


           ),
           SimSmart(),
           
        

          ]
              ),

        ),
);
  }
}

