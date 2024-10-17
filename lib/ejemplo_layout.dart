import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EjemploLayout extends StatelessWidget {
  const EjemploLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("My App"),
      //   backgroundColor: Colors.red,
      //   centerTitle: true,
      //   actions: [
      //     Text("1"),
      //     Text("2"),
      //   ],
      //   leading: Text("Volver"),
      // ),
      // backgroundColor: Colors.blue,
      backgroundColor: Colors.red,
      body: Column(
         // mainAxisSize: MainAxisSize.max,
        // verticalDirection: VerticalDirection.up,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.black,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ],
        // child: Image.asset('assets/imagenes/FotoEjercicio-200x300.jpg'),
      ),
    );
  }
}
