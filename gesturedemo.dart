import 'dart:math';
import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';

// import 'package:my_app/gesturedemo.dart';

void main() {
  runApp(
    MaterialApp(
      home: GestureDemo(), //Calling your GestureDemo class
    ),
  );
}

//Step 1
class GestureDemo extends StatefulWidget {
  const GestureDemo({super.key});
  @override
  State<GestureDemo> createState() {
    return _GestureDemo();
  }
}

//Step 2
class _GestureDemo extends State<GestureDemo> {
  var numtime = 0; // created variable for getting number of times tapped
  Color changebgcolor = Colors.red; //created variable of datatype color
  final randomizer = Random();
  var generaterandom = 1;
//Created function for incrementing count of times container was clicked
  void noofTimes() {
    setState(() {
      numtime += 1;
    });
  }

//Created function for changing color of heart icon
  void changebg() {
    setState(() {
      if (changebgcolor == Colors.red) {
        changebgcolor = const Color.fromARGB(255, 209, 115, 226);
      } else {
        changebgcolor = Colors.red;
      }
    });
  }

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//onTap Gesture example
            Text(
              'Tapped $numtime times',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {
                noofTimes();
              },
              child: Container(
                color: Colors.amber,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  'Single Tap here',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
//onDoubleTap Gesture
            Icon(Icons.favorite, size: 60, color: changebgcolor),
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
            const SizedBox(
              height: 50,
            ),
//onLongTap Gesture
            Text(
              'Random no. generated between 1 to 10:\n$generaterandom',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onLongPress: () {
                randomNo();
              },
              child: Container(
                color: Colors.lime,
                padding: EdgeInsets.all(20),
                child: const Text(
                  'Long Press here',
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
