import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Padding(
          padding: EdgeInsets.all(100),
          child: Text("Hola mundo")),
    )
  );
}
class MyFirstApp extends StatelessWidget{
  const MyFirstApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const Placeholder(color: Colors.red);
  }

}