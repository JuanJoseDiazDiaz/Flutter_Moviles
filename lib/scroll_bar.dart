import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleScroll extends StatefulWidget {
  const ExampleScroll({super.key});

  @override
  _ExampleScroll createState() => _ExampleScroll();
}

class _ExampleScroll extends State<ExampleScroll> {
  // 1. Creación de variable controlador
  final ScrollController _scrollController = ScrollController();

  Color _colorFondo = Colors.blue;

  //2. En el metodo que se invoca al presentar la interfaz, añadimos el controlador
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(infoScroll);
  }

  //4. Elimina el controlador
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: _scrollController, // 3. Le asignas el controlador al widget
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: onClick(), child: Text("Down", style: TextStyle(color: Colors.black))),
                ),
                Container(
                  height: 50,
                  alignment: Alignment.center,

                ),
                Container(
                  height: 50,
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: onClick(), child: Text("Up", style: TextStyle(color: Colors.black))),
                )
              ],
            ),
            Container(color: Colors.green, height: 400),
            Container(color: Colors.blue, height: 1700)
          ],
        ),
      ),
    );
  }

  // creamos un metodo que invocará cuando ocurre algun error de scroll
  void infoScroll() {
    print(
        "El valor del Scroll en pixeles es de: ${_scrollController.position.pixels}");
    print("El valor del offset es de: ${_scrollController.offset}");

    setState(() {
      if(_scrollController.offset >= 800){
        _colorFondo = Colors.amber;
      }else{
        _colorFondo = Colors.blue;
      }
    });
  }

  void controlPixel(){
    print(_scrollController.position.pixels);
  }

  onClick() {}
}
