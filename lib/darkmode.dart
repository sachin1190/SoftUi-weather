import 'package:flutter/material.dart';
import 'Concave_shadow.dart';
import 'package:analog_clock/analog_clock.dart';

class DarkMode extends StatelessWidget {
  Color color = const Color(0xFF030303);

  Color shadow1 = const Color(0xFF6D6D6D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF101010),
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
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  Text(
                    'LAST 30 DAYS',
                    style: TextStyle(
                      color: Colors.white30,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.white70,
                    ),
                    width: 40,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      shape: BoxShape.rectangle,
                      color: color,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF343434),
                            offset: Offset(3.0, 2.0),
                            blurRadius: 3.0,
                            spreadRadius: -2.5),
                        BoxShadow(
                            color: Color(0xFF343434),
                            offset: Offset(-9.0, 0.9),
                            blurRadius: 2,
                            spreadRadius: -1),
                      ],
                    ),
                  )
                ],
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                shape: BoxShape.rectangle,
                color: color,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF171717),
                      offset: Offset(2.0, 1.0),
                      blurRadius: 3.0,
                      spreadRadius: -2.5),
                  BoxShadow(
                      color: Color(0xFF343434),
                      offset: Offset(-9.0, -2.0),
                      blurRadius: 5,
                      spreadRadius: 0.2),
                ],
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
                    color: color,
                    shape: BoxShape.circle,
                    boxShadow: getShadow(),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: MediaQuery.of(context).size.width / 3.2,
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
                      color: color,
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
                    color: color,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          color,
                          Colors.black87,
                          Colors.black45,
                          Colors.black12
                        ],
                        stops: [
                          0.1,
                          0.3,
                          0.8,
                          1
                        ]),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF343434),
                          offset: Offset(3.0, -2.0),
                          blurRadius: 3.0,
                          spreadRadius: -2.5),
                      BoxShadow(
                          color: Color(0xFF343434),
                          offset: Offset(-9.0, -0.0),
                          blurRadius: 8,
                          spreadRadius: 1),
                    ]),
              ),
//              Container(
//                height: 80,
//                width: MediaQuery.of(context).size.width / 5.5,
//                decoration: BoxDecoration(
//                    color: color,
//                    shape: BoxShape.circle,
//                    boxShadow: getShadowGradient(),
//                    gradient: LinearGradient(
//                        begin: Alignment.topLeft,
//                        end: Alignment.bottomRight,
//                        colors: [
//                          Colors.grey[100],
//                          Colors.grey[100],
//                          Colors.grey[400],
//                          Colors.grey[500],
//                        ],
//                        stops: [
//                          0.1,
//                          0.3,
//                          0.8,
//                          1
//                        ])),
//              ),
              Container(
                child: Icon(
                  Icons.ac_unit,
                  size: 60.0,
                  color: Colors.blue.shade700,
                ),
                height: 150,
                width: MediaQuery.of(context).size.width / 3,
                decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFF171717),
                          offset: Offset(2.0, 1.0),
                          blurRadius: 3.0,
                          spreadRadius: -2.5),
                      BoxShadow(
                          color: Color(0xFF343434),
                          offset: Offset(-9.0, -2.0),
                          blurRadius: 5,
                          spreadRadius: 0.2),
                    ]),
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
                color: color,
                boxShadow: [
                  BoxShadow(
                      color: Color(0xFF171717),
                      offset: Offset(2.0, 1.0),
                      blurRadius: 3.0,
                      spreadRadius: -2.5),
                  BoxShadow(
                      color: Color(0xFF343434),
                      offset: Offset(-9.0, -2.0),
                      blurRadius: 5,
                      spreadRadius: 0.2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//dynamic getDecoration() {
//  BoxDecoration(
//      color: Colors.grey.shade100,
//      shape: BoxShape.rectangle,
//      borderRadius: BorderRadius.circular(10.0),
//      boxShadow: getShadow());
//}

dynamic getShadow() {
  return [
    BoxShadow(
        color: Color(0xFF171717),
        offset: Offset(7.0, 2.0),
        blurRadius: 1.0,
        spreadRadius: -5.5),
    BoxShadow(
        color: Color(0xFF343434),
        offset: Offset(-9.0, -2.0),
        blurRadius: 5,
        spreadRadius: -4),
  ];
}

// Color(0xFF6D6D6D)
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
