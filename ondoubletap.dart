import 'package:flutter/material.dart';

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
  Color changebgcolor = Colors.red;
  void changebg() {
    setState(() {
      if (changebgcolor == Colors.red) {
        changebgcolor = const Color.fromARGB(255, 209, 115, 226);
      } else {
        changebgcolor = Colors.red;
      }
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add_reaction_sharp, size: 60, color: changebgcolor),
            const SizedBox(height: 10),
            GestureDetector(
              onDoubleTap: () {
                changebg();
              },
              child: Container(
                color: Colors.black,
                padding: EdgeInsets.all(20),
                child: const Text(
                  'Double Tap here',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
