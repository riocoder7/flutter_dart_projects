import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: TapDemo(),
    ),
  );
}

class TapDemo extends StatefulWidget {
  @override
  State<TapDemo> createState() {
    return _TapDemoState();
  }
}

class _TapDemoState extends State<TapDemo> {
  final randomizer = Random();
  var generaterandom = 1;
  void randomNo() {
    setState(() {
      generaterandom = randomizer.nextInt(10) + 1;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Random no. generated between 1 to 10:\n $generaterandom',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            GestureDetector(
                onLongPress: () {
                  randomNo();
                },
                child: Container(
                    width: 100,
                    height: 80,
                    color: Color.fromARGB(255, 255, 140, 9),
                    child: Text("Tap here", style: TextStyle(fontSize: 20))))
          ],
        ),
      ),
    );
  }
}
