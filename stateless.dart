import 'package:flutter/material.dart';
void main() {
runApp(
MaterialApp(
home: Scaffold(
body: MyStatelessWidget(),
/*You can then use this MyStatelessWidget in your Flutter app by creating
an instance of it and including it in your widget tree, just like you
would with any other Flutter widget.*/
),
),
);
}
// Created a customized class
class MyStatelessWidget extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Container(
child: Text(
'Hello, World!',
style: TextStyle(fontSize: 24),
),
);
}
}