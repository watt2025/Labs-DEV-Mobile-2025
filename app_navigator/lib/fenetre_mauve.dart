import 'package:app_navigator/bouton_colore.dart';
import 'package:flutter/material.dart';
import 'package:app_navigator/fenetre_verte.dart';

class FenetreMauve extends StatelessWidget {
  const FenetreMauve({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('Fenetre Mauve'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 5),
            child: BoutonColore(
              couleur: Colors.deepPurple,textBouton: "suivant",
              onPressed: () {
                Navigator.pushReplacement(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => const FenetreVerte(),
                     )
                  );
              },
            ),
             ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
              child: BoutonColore(
                couleur: Colors.deepPurple,textBouton: "precedent",
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              )
        ],
      ),
    );
  }
}