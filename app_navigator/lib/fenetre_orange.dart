import 'package:app_navigator/bouton_colore.dart';
import 'package:flutter/material.dart';
import 'package:app_navigator/fenetre_mauve.dart';

class FenetreOrange extends StatelessWidget {
  const FenetreOrange({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.deepOrange,
       foregroundColor: Colors.white,
       centerTitle: true,
       title: const Text("Fenetre Orange"),
     ),
     body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: BoutonColore(
            couleur: Colors.deepOrange,
            textBouton: "suivant",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context) => const FenetreMauve() ));
            },
          ),)
      ],
     ),
      
    );
  }
}