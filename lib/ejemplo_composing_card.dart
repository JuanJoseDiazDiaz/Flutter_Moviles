import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EjemploComposingCard extends StatelessWidget{
  const EjemploComposingCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   height: 500,
                   width: 500,
                   color: Colors.black,
                   child: 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Positioned(
                            child:
                            Text("Sci-fi",style: TextStyle(color: Colors.white, fontSize: 20)),
                        )
                     ],
                   ),
                 )
               ],
             )
           ],
         )
        ],
      ),
    );
  }
}