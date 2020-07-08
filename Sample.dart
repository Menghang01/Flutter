import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'PreviousWinnerComponent.dart' ; 
import 'Home_Page_Components.dart'; 
import 'FaqComponent.dart'; 


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

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

class _MyHomePageState extends State<MyHomePage> {
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
          // Here we take the value from the MyHomePage object that was created by
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
           margin: EdgeInsets.only(top:10,bottom:10),
           child:PhotoStack('https://smartstart.com.kh/smartstart/images/new-icon/FAQ.jpg', 'FAQ')),
           Container(
           margin: EdgeInsets.only(left:25),
           child:Text('THE PROGRAM',style: TextStyle(color:Colors.green[700],fontSize: 20,fontWeight: FontWeight.bold)),
           ),

           QA('1.What is the objective of this program?','SmartStart is a Young Innovator Program aimed at enabling and empowering young Cambodian talents to develop their tech and digitive innovative ideas with Smart; the goal is to help turn the best concepts into actual tech enterprises. '),
           QA('2.What are the benefits of attending this program?','SmartStart offers a unqiue learning platform along with mentorship and financial support. Through this program, you will get:'),
           Inside('Connected:','You will be exposed to vairous elements of ','Cambodia digital startup ecosystem, such as experienced mentors, inspirational speakers, co-working spaces, investors and other technical support'),
           Inside('Skills:','The program consists of business modules taught by','experts in their field who have trained and mentored successful startups in Cambodia. The Technopreneurship Challenge wil brng successful teams to a province outsdie Phnom Penh'),
           Inside('Funding:','Up to five winning teams will receive 5,000 USD', 'While undergoing a 6 months funded incubator program in partnership with a global hub, where they will access not only free space but also an array of resources, mentorship, inspiration, and collaboration opportunities. The team with the best progress during the Grow Phase will also be awarded with a sponsored Tech trip to visit the likes of Google, Facebook, and Microsoft in Singapore. Smart is also ready to further invest in your idea after the full SmartStart cycle is completed'),
           QA('3. Do I have to bear any cost to participate in this program?','Smart will cover all program-related expenses, including meals, refreshments, program material etc. Transporation and accomodation will be also provided for the Technopreneurship Challenge during the Enable Phase.'),
           QA('4. What is the selection process like?',''),
           Inside('Inside Phase:', '','- 120 students will be selectecd from the pool of applications to participate in half ways '),
           
           RaisedButton(child: Text('Go to Contact-Us page'),
                  onPressed:(){
                    Navigator.pushNamed(context, '/contact-us'); 
                  }),
            RaisedButton(child: Text('Go to PreviousWinner page'),
                  onPressed:(){
                    Navigator.pushNamed(context, '/previousWinner'); 
                  }),

             RaisedButton(child: Text('Go to ApplyNow page'),
                  onPressed:(){
                    Navigator.pushNamed(context, '/ApplyNow'); 
                  }),


           
           SimSmart(),
           
        

          ]
              ),

        ),
);
  }
}

class Inside extends StatelessWidget {
  final String title, row, below; 
  const Inside(
    this.title,
    this.row,
    this.below, 
  ) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:38,bottom:10),
      child: Column(children: <Widget>[
           Row(
        children: <Widget>[
           Text(title,style: TextStyle(fontSize: 13,color: Colors.green[700],fontWeight: FontWeight.bold)),
           Text(row, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),)
        ],
     
      ),   
      Text(below,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)
      ],)
    );
  }
}

class QA extends StatelessWidget {
  final String question; 
  final String answer; 
  const QA(
    this.question,
    this.answer,
   );

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.only(left:25,top:10),
    child: Column(
      
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       Text(question, style: TextStyle(color: Colors.green[700],fontWeight: FontWeight.bold),),
       Container(
         margin: EdgeInsets.only(top:5),
         padding: EdgeInsets.symmetric(vertical:5,horizontal:15),
         child: Text(answer,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
         
       )
    ],)
    
    );
  }
}
