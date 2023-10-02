import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ), //AppBar
        drawer: Drawer(
          child: Text('Drawer Data'),
        ), //Drawer
      ), //Scaffold
    ), //MaterialApp
  );
}
