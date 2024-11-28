import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EjemploStack extends StatelessWidget {
  const EjemploStack({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          color: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Expanded(
                flex: 1,child: Container(
              color: Colors.orange,
            ))
          ],
        ));
  }
}
