import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EjemploTextButton extends StatefulWidget {
  const EjemploTextButton({super.key});

  @override
  State<EjemploTextButton> createState() => _EjemploTextButtonState();
}

class _EjemploTextButtonState extends State<EjemploTextButton> with SingleTickerProviderStateMixin {
bool _pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _pressed ? Colors.amber[100] : Colors.blueGrey,
      body: Center(
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.blueAccent[100])
          ),
            onPressed: (){
            setState(() {
              _pressed = !_pressed;
            });
              print("has pulsado!!");
            }, child: Text("HOLA", style: TextStyle(fontSize: 19.0),)
        ),
      ),
    );
  }
}
