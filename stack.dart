import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 500, height: 500, color: Colors.lime),
            Container(
              width: 400,
              height: 400,
              color: Colors.amber,
            ),
            Container(width: 300, height: 300, color: Colors.purple),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                  'https://th.bing.com/th/id/OIG.CO2sHWK_IEYIwzXsC2hX'),
            ),
          ],
        ),
      ),
    ),
  ));
}
