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
      backgroundColor: Colors.blueGrey,
      body: Column(
         // mainAxisSize: MainAxisSize.max,
         // verticalDirection: VerticalDirection.up,
        // mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      color: Colors.black,
                    ),Container(
                      width: 10,
                      height: 10,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.white,
              ),
            ],
          ),
        ],
        // child: Image.asset('assets/imagenes/FotoEjercicio-200x300.jpg'),
      ),
    );
  }
}
