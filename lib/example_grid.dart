import 'package:flutter/material.dart';

class ExampleGrid extends StatelessWidget {
  const ExampleGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 8, // 8 columnas
        mainAxisSpacing: 2, // Espacio entre filas
        crossAxisSpacing: 2, // Espacio entre columnas
        children: List.generate(
          64, // 64 celdas en total (8x8)
              (index) {
            // Determinamos el color de la celda dependiendo de la fila y columna
            Color backgroundColor = (index % 2 == 0)
                ? Colors.black
                : Colors.white;

            // Alternamos el color de las celdas
            if ((index ~/ 8) % 2 == 1) {
              backgroundColor = (index % 2 == 0)
                  ? Colors.white
                  : Colors.black;
            }

            return Container(
              color: backgroundColor,
            );
          },
        ),
      ),
    );
  }
}
