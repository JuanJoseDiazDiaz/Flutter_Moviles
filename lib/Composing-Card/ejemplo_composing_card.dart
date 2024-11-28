import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EjemploComposingCard extends StatelessWidget {
  const EjemploComposingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset("assets/imagenes/matrix.png"),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Sci-fi",
                  style: TextStyle(color: Colors.white, fontSize: 30))
            ],
          ),
          const Text(
            "The Matrix",
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
          ListView(
            children: <Widget> [
                ListTile(title: Text("Sun"),)
            ],
          )
        ],
      ),
    ));
  }
}
