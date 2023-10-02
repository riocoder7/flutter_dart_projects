import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.white, Colors.cyan],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            const SizedBox(height: 30), //SizedBox
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pink, Colors.white, Colors.cyan],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            const SizedBox(height: 30), //SizedBox
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.white, Colors.yellow],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}
