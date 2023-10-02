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
  var num = 0;
  void Num() {
    setState(
      () {
        num = num + 1;
        print(num);
      },
    );
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Tapped $num times',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Num();
              },
              child: Container(
                width: 100,
                height: 40,
                padding: EdgeInsets.all(20),
                color: Color.fromARGB(255, 255, 140, 9),
                child: Text(
                  "Tap here",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
