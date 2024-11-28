import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EjemplosListviews extends StatefulWidget {
  const EjemplosListviews({super.key});

  @override
  _EjemplosListviews createState() => _EjemplosListviews();
}

class _EjemplosListviews extends State<EjemplosListviews> {
  List dayWeeks = <String>[
    "Monday",
    "Thursday",
    "Wednesday",
    "Tuesday",
    "Friday",
    "Saturday",
    "Sunday"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: listaEstatica(dayWeeks));
  }

  ListView listaDinamicaSeparada(List dayWeeks) {
    return ListView.separated(
      itemCount: 20,
      itemBuilder: (context, dayweeks) {
        return listaEstatica(dayWeeks);
      },
      separatorBuilder: (context, index) {
        Color colorLine = Colors.white;
        DateTime hoy = DateTime.now();
        if (dayWeeks[0] == hoy) {
          colorLine = Colors.grey;
        }
        if(dayWeeks[1] == hoy){

        }
        return Divider(
          color: colorLine,
        );
      },
    );
  }

  /*
  * Crea una ListView dinámica usando el constructor ListView.builder.
  * */
  ListView listaDinamica() {
    return ListView.builder(
      itemCount: 30, //Si no pongo nada no tiene límite
      itemBuilder: (context, index) {
        return ListTile(
          title: Text("Elemento $index"),
        );
      },
    );
  }
}

ListView listaEstatica(List dayWeeks) {
  return ListView(
      children: ListTile.divideTiles(color: Colors.red, tiles: [
    ListTile(title: Text(dayWeeks[0])),
    ListTile(title: Text(dayWeeks[1])),
    ListTile(title: Text(dayWeeks[2])),
    ListTile(title: Text(dayWeeks[3])),
    ListTile(title: Text(dayWeeks[4])),
    ListTile(title: Text(dayWeeks[5])),
    ListTile(title: Text(dayWeeks[6])),
  ]).toList());
}

/*
* [
        for (int i = 0; i < dayWeeks.length; i++)
          ListTile(
            title: Text(dayWeeks[i]),
          ),
      ],
* */
