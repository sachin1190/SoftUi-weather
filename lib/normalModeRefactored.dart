import 'package:flutter/material.dart';
import 'Concave_shadow.dart';
import 'package:analog_clock/analog_clock.dart';
import 'darkmode.dart';
import 'package:provider/provider.dart';
import 'modeProvider.dart';

class DarkModeFinal extends StatefulWidget {
  @override
  _DarkModeFinalState createState() => _DarkModeFinalState();
}

class _DarkModeFinalState extends State<DarkModeFinal> {
  static const IconData fire_1 =
      const IconData(0xe800, fontFamily: 'MyFlutterApp');

  final color = const Color(0xb6bfd2);
  var shade7002 = Colors.redAccent;
  var bodyColor = Colors.grey[850];
  var grey100 = Colors.grey[100];
  var grey400 = Colors.grey[400];
  var grey500 = Colors.grey[500];
  var bosShadowRight = Colors.grey[800];
  var shadowLeft = Colors.black54;

//  final color = const Color(0xb6bfd2);
//  var shade7002 = Colors.blue[700];
//  var bodyColor = Colors.grey[200];
//  var grey100 = Colors.grey[100];
//  var grey400 = Colors.grey[400];
//  var grey500 = Colors.grey[500];
//  var bosShadowRight = Colors.grey[600];
//  var shadowLeft = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bodyColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'PERIOD',
                    style: TextStyle(color: shade7002),
                  ),
                  Text(
                    'LAST 30 DAYS',
                    style: TextStyle(
                      color: Colors.grey[400],
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.redAccent,
                    ),
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                      color: bodyColor,
                      boxShadow: getShadow(),
                    ),
                  )
                ],
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                color: bodyColor,
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
                    tickColor: shade7002,
                    hourHandColor: shade7002,
                    minuteHandColor: shade7002,
                    secondHandColor: shade7002,
                    datetime: DateTime.now(),
                    isLive: true,
                    width: 250,
                    height: 250,
                  ),
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: bodyColor,
                    shape: BoxShape.circle,
                    boxShadow: getShadow(),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: MediaQuery.of(context).size.width / 3.5,
                child: Center(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(
                          Icons.flash_on,
                          size: 70.0,
                          color: shade7002,
                        ),
                        Text(
                          '7 C',
                          style: TextStyle(
                              color: shade7002, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: bodyColor,
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
                  color: shade7002,
                ),
                height: 150,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                    color: bodyColor,
                    shape: BoxShape.rectangle,
                    boxShadow: getShadow()),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Provider.of<ModeProvider>(context).toggleMode();
                  },
                  child: Center(
                      child: Text(
                    'MODE',
                    style: TextStyle(color: Colors.redAccent, fontSize: 15),
                  )),
                ),
                height: 80,
                width: MediaQuery.of(context).size.width / 5.5,
                decoration: BoxDecoration(
                    color: bodyColor,
                    shape: BoxShape.circle,
                    boxShadow: getShadow(),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey[700],
                          Colors.grey[800],
                          Colors.grey[900],
                          Colors.grey[900],
                        ],
                        stops: [
                          0.1,
                          0.3,
                          0.7,
                          1
                        ])),
              ),
              Container(
                child: Icon(
                  Icons.ac_unit,
                  size: 60.0,
                  color: shade7002,
                ),
                height: 150,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                    color: bodyColor,
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
                      color: shade7002),
                ),
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                color: bodyColor,
                boxShadow: getShadow(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  dynamic getDecoration() {
    BoxDecoration(
        color: grey100,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: getShadow());
  }

  dynamic getShadow() {
    return [
      BoxShadow(
          color: bosShadowRight,
          offset: Offset(4.0, 1.0),
          blurRadius: 1.0,
          spreadRadius: 1.0),
      BoxShadow(
          color: shadowLeft,
          offset: Offset(-4.0, -4.0),
          blurRadius: 5.0,
          spreadRadius: 3),
    ];
  }

  dynamic getShadowGradient() {
    return [
      BoxShadow(
          color: bosShadowRight,
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
}
