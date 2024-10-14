import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EjemploLayout extends StatelessWidget {
  const EjemploLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: [
          Text("1"),
          Text("2"),
        ],
        leading: Text("Volver"),
      ),
      backgroundColor: Colors.blue,
      body: Center(
          child: Image.asset('assets/imagenes/FotoEjercicio-200x300.jpg')),
    );
  }
}
