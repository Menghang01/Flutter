import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Home_Page_Components.dart';

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
            Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Header('What is at Stake?'),
                    Second(Icons.money_off, '5000USD'),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.group_work,
                              size: 40,
                              color: Colors.green[700],
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: First_part(
                                    '6-month funded incubator program with Impact Hub')),
                          ],
                        )),
                    Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.business_center,
                              size: 40,
                              color: Colors.green[700],
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: First_part(
                                  'The team with the best business progress after the \nincubation period will be awarded a fully paid trip to\nvisit the likes of Google, Facebook and Microsoft in \nSingapore ',
                                )),
                          ],
                        )),
                    Paragraph(
                        'In partnership with global co-working space provider Impact Hub Phnom Penh, the winnning team will gain accessto not only free space but also to an ecosystem of resources, mentorship,inspiration and collaborative opportunities'),
                    Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                            'Smart is also ready to further invest in your idea after the full Smartstart Cycle is complete!',
                            style: TextStyle(
                                color: Colors.green[700],
                                fontWeight: FontWeight.bold))),
                    Header('The Process'),
                    Row(
                      children: <Widget>[
                        Container(
                            margin: EdgeInsets.only(left: 20, right: 90),
                            child: Icon(
                              Icons.lightbulb_outline,
                              size: 50,
                              color: Colors.green,
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 90),
                            child: Icon(
                              Icons.settings,
                              size: 50,
                              color: Colors.green,
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 0),
                            child: Icon(
                              Icons.local_florist,
                              size: 50,
                              color: Colors.green,
                            )),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 15, right: 65),
                          child: Text('Inspire',
                              style: TextStyle(
                                  color: Colors.green[700],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 15, right: 65),
                          child: Text('Enable',
                              style: TextStyle(
                                  color: Colors.green[700],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 15, right: 0),
                          child: Text('Inspire',
                              style: TextStyle(
                                  color: Colors.green[700],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    Container(
                      margin: (EdgeInsets.only(bottom: 20)),
                      child: Row(
                        children: <Widget>[
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Descriptions(110,
                                  '120 shortlisted    \t\t\t\t\tstudents \nparticipating in a\n\t\t\t\tHackathon\n\t\t\t\tchallenge\n')),
                          Container(
                              margin: EdgeInsets.only(right: 30),
                              child: Descriptions(120,
                                  '\t\tTop 60 students\n\t\t\t\tworking on biz\n\t\t\t\trealization via a\nTechnopreneurship\n\t\t\t\t\tchallenge')),
                          Container(
                              margin: EdgeInsets.only(right: 0),
                              child: Descriptions(110,
                                  '\t\tUp to 5 teams \t\tincubating and\naccelerating the\n\t\t projects for 6 \n\t\t\t\t\t\tmonths')),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Row(
                          children: <Widget>[
                            Learnmore(50.0),
                            Learnmore(50.0),
                            Learnmore(0),
                          ],
                        )),
                    Header('What are we looking for?'),
                    Paragraph(
                        'All universities students with keen interest and curiosity in\ninnovation,entrepreneurship, startups and digital\ntechnologies. These students must process any digital business idea in the following verticals:'),
                    Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.book,
                              color: Colors.green,
                              size: 40,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text('Digital Education',
                                  style: TextStyle(color: Colors.green[700])),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.laptop,
                                    size: 40,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      'Digital Content &\nEntertainment',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 10, bottom: 20),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.map,
                            color: Colors.green,
                            size: 40,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('Digital Disruptive\nIndustry Model',
                                style: TextStyle(color: Colors.green)),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 50),
                              child: Icon(
                                Icons.account_balance_wallet,
                                color: Colors.green,
                                size: 40,
                              )),
                          Container(
                            margin: EdgeInsets.only(left: 10, bottom: 10),
                            child: Text(
                              'Digital Commerce &\nPayment',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Header('Who can apply?'),
                    Paragraph('At the minimum, candidates must have:'),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.chat,
                          size: 40,
                          color: Colors.green[700],
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('High English\nProficiency',
                                style: TextStyle(color: Colors.green))),
                        Container(
                          margin: EdgeInsets.only(left: 80, right: 10),
                          child: Icon(
                            Icons.check_circle,
                            size: 40,
                            color: Colors.green[700],
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('High English\nProficiency',
                                style: TextStyle(color: Colors.green))),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 10),
                          child: Icon(
                            Icons.people_outline,
                            color: Colors.green,
                            size: 40,
                          ),
                        ),
                        Text('Entrepreneur\nSkills',
                            style: TextStyle(color: Colors.green)),
                      ],
                    ),
                  ],
                )),
            Row(
              children: <Widget>[
                Container(
                    width: 200,
                    height: 350,
                    color: Colors.green[700],
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 40, bottom: 20),
                          child: Text(
                              'Are\nYou\nReady to\nInnovate\nwith\nSmart?',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Text('Apply through our online\napplication form:',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          margin: EdgeInsets.only(top: 10, right: 43),
                          width: 110,
                          height: 40,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 17),
                          child: Text(
                            'Apply Now',
                            style: TextStyle(
                                color: Colors.green[700],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30, left: 80),
              width: 240,
              height: 40,
              color: Colors.yellow,
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Text('INNOVATING WITH YOU, INVESTING IN YOU',
                  style: TextStyle(color: Colors.black, fontSize: 10)),
            ),
            Row(
              children: <Widget>[
                Images(40,
                    'https://smartstart.com.kh/smartstart/images/new-icon/MoEYS.png'),
                Images(10,
                    'https://smartstart.com.kh/smartstart/images/new-icon/MPTC.png'),
                Images(10,
                    'https://smartstart.com.kh/smartstart/images/new-icon/CBRD.png'),
                Images(10,
                    'https://smartstart.com.kh/smartstart/images/new-icon/Impact.png'),
                Images(10,
                    'https://smartstart.com.kh/smartstart/images/new-icon/Smart.png'),
              ],
            ),
            FollowUs(),
            SocialMedia(),
            SimSmart()
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
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

