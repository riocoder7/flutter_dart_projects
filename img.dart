import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
        ),
        body: Image.network(
            "https://img.freepik.com/free-photo/puppy-that-is-walking-snow_1340-37228.jpg?q=10&h=200"),
      ),
    ),
  );
}
