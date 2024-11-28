import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListasGestures extends StatefulWidget {
  const ListasGestures({super.key});

  @override
  State<ListasGestures> createState() => _ListasGesturesState();
}

class _ListasGesturesState extends State<ListasGestures> {
  double x = 0.0;
  double y = 0.0;

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
        ),
        backgroundColor: Colors.blue,
      ),
        body: Column(
      children: [
        Container(
          height: double.maxFinite,
          child: Listener(
            onPointerMove: _updateLocation,
            child: listaDinamica2(),
          ),
        ),
      ],

    ));
  }

  ListView listaDinamica() {
    return ListView.builder(
      itemCount: 10, //Si no pongo nada no tiene límite
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            "Elemento $index",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        );
      },
    );
  }

  ListView listaDinamica2() {
    return ListView.builder(
      itemCount: 10, //Si no pongo nada no tiene límite
      itemBuilder: (context, index) {
        return ListTile(
          tileColor: index == x?Colors.grey[200]:Colors.transparent,
          title: Text(
            "Elemento $index",
            style: Theme.of(context).textTheme.headlineMedium,
          ),

        );
      },
    );
  }
}
