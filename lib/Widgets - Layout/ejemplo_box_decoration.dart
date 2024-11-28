import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EjemploBoxDecoration extends StatelessWidget {
  const EjemploBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        width: 100,
        height: 100,
        // color: Colors.red,
        alignment: Alignment.center,
        child: Text(
          "hola",
          style: TextStyle(fontSize: 30.0),
        ),
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(color: Colors.blueAccent, width: 12.0),
                right: BorderSide(color: Colors.blueAccent, width: 12.0),
                bottom: BorderSide(color: Colors.blueAccent, width: 12.0),
                top: BorderSide(
                  width: 12.0,
                ))),
      ),
          SizedBox(height: 100,),
          Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            child: Text("Adios", style: TextStyle(fontSize: 30.0), ),
            decoration: BoxDecoration(
              border: Border.all(width: 3.0),
              // borderRadius: BorderRadius.all(
              //   Radius.circular(100.0)
              // )
              shape: BoxShape.rectangle
            ),
          ),
    ]));
  }
}
