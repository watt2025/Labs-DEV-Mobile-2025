import 'package:flutter/material.dart';

class FenetreVerte extends StatelessWidget {
  const FenetreVerte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        title: const Text("Fenetre Verte",
        style: TextStyle(
          fontWeight: FontWeight.w800
        ),),
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                foregroundColor: Colors.black,
                padding: const EdgeInsets.all(15),
              )
               , child:const Text(
                "precedent",
                style: TextStyle(
                  fontWeight: FontWeight.w600,fontSize: 16
                ),
               )
               ),
            ),
        ],

      ),
    );
  }
}