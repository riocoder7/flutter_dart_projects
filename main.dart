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
              'Tapped $num Times',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Num();
              },
              child: Container(
                width: 100,
                height: 40,
                color: Colors.blue,
                child: Text(
                  'Tap Here',
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
