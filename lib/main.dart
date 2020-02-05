import 'package:flutter/material.dart';
import 'Concave_shadow.dart';
import 'clock_dial_painter.dart';
import 'clock_hands.dart';
import 'package:analog_clock/analog_clock.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const IconData fire_1 =
      const IconData(0xe800, fontFamily: 'MyFlutterApp');

  final color = const Color(0xb6bfd2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'PERIOD',
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Text(
                    'LAST 30 DAYS',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Icon(Icons.navigate_next),
                    width: 40,
                    height: 30,
                    decoration: getDecoration(),
                  )
                ],
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                color: Colors.grey[200],
                boxShadow: getShadow(),
              ),
            ),
          ),
          Stack(
            children: <Widget>[
              Center(
                child: Container(
                  child: AnalogClock(
                    showNumbers: false,
                    tickColor: Colors.blue.shade700,
                    hourHandColor: Colors.blue.shade700,
                    minuteHandColor: Colors.blue.shade700,
                    secondHandColor: Colors.blue.shade700,
                    datetime: DateTime.now(),
                    isLive: true,
                    width: 250,
                    height: 250,
                  ),
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    shape: BoxShape.circle,
                    boxShadow: getShadow(),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 130,
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.flash_on,
                          size: 70.0,
                          color: Colors.blue.shade700,
                        ),
                        Text(
                          '7 C',
                          style: TextStyle(
                              color: Colors.blue.shade700,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      shape: BoxShape.circle,
                      boxShadow: getShadow(),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.whatshot,
                  size: 60.0,
                  color: Colors.deepOrange,
                ),
                height: 150,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.rectangle,
                    boxShadow: getShadow()),
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width / 5.5,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                    boxShadow: getShadowGradient(),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey[100],
                          Colors.grey[100],
                          Colors.grey[400],
                          Colors.grey[500],
                        ],
                        stops: [
                          0.1,
                          0.3,
                          0.8,
                          1
                        ])),
              ),
              Container(
                child: Icon(
                  Icons.ac_unit,
                  size: 60.0,
                  color: Colors.blue.shade700,
                ),
                height: 150,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.rectangle,
                    boxShadow: getShadow()),
              )
            ],
          ),
          Center(
            child: Container(
              child: Center(
                child: Text(
                  'UPDATE SETTINGS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.blue.shade700),
                ),
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                color: Colors.grey[200],
                boxShadow: getShadow(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

dynamic getDecoration() {
  BoxDecoration(
      color: Colors.grey.shade100,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: getShadow());
}

dynamic getShadow() {
  return [
    BoxShadow(
        color: Colors.grey[600],
        offset: Offset(4.0, 4.0),
        blurRadius: 15.0,
        spreadRadius: 4.0),
    BoxShadow(
        color: Colors.white,
        offset: Offset(-4.0, -4.0),
        blurRadius: 5.0,
        spreadRadius: 4),
  ];
}

dynamic getShadowGradient() {
  return [
    BoxShadow(
        color: Colors.grey[600],
        offset: Offset(4.0, 4.0),
        blurRadius: 15.0,
        spreadRadius: 1.0),
    BoxShadow(
        color: Colors.white,
        offset: Offset(-4.0, -4.0),
        blurRadius: 15.0,
        spreadRadius: 1.0),
  ];
}

/*
Stack(
                      children: <Widget>[
                        Positioned(
                          top: 50,
                          child: CustomPaint(
                            painter: new ClockDialPainter(
                                clockText: ClockText.roman),
                          ),
                        ),
                      ],
                    ),
 */
