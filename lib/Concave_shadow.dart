import 'package:flutter/material.dart';

class ConcaveShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Opacity(
            opacity: 0.6,
            child: Icon(
              Icons.add,
              size: 50.0,
              color: Colors.grey.shade500,
            ),
          ),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade400,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[400],
                    offset: Offset(-7.0, -4.0),
                    blurRadius: 30.0,
                    spreadRadius: 20.0),
                BoxShadow(
                    color: Colors.grey[100],
                    offset: Offset(4.0, 7.0),
                    blurRadius: 40.0,
                    spreadRadius: 50),
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[300],
                  Colors.grey[200],
                  Colors.grey[50],
                  Colors.grey[50],
                ],
                stops: [0.1, 0.35, 0.7, 1],
              )),
        ),
      ),
    );
  }
}
