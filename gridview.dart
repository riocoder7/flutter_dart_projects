import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          children: [
            Expanded(
              child: Container(
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
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                  'https://media.istockphoto.com/id/1146517111/photo/taj-mahal-mausoleum-in-agra.jpg?s=612x612&w=0&k=20&c=vcIjhwUrNyjoKbGbAQ5sOcEzDUgOfCsm9ySmJ8gNeRk='),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                  'https://th.bing.com/th/id/OIG.CO2sHWK_IEYIwzXsC2hX'),
            ),
            Container(width: 200, height: 200, color: Colors.purple),
          ],
        ),
      ),
    ),
  ));
}
