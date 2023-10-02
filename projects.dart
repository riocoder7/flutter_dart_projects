import 'package:flutter/material.dart';

void main() {
  
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('this is app bar ')),
        body: Center(
          
          child : saz(),
        
        
        )
      )
    
    )
  
  );
}



class saz extends StatelessWidget{
  
  Widget build(BuildContext context){
    return Text(' hello this is class text ');
  }
}