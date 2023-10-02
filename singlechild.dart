import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.white, Colors.cyan],
              begin: Alignment.bottomLeft,
              end: Alignment.topCenter,
            ), //LinearGradient
          ), //BoxDecoration
        ), //Container
      ), //Scaffold
    ), // MaterialApp
  );
}
