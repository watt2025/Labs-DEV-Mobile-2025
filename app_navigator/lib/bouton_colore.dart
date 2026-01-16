import 'package:flutter/material.dart';

class BoutonColore extends StatelessWidget {
  final Color? couleur;
  final String  textBouton;
  final Function()? onPressed;
  const BoutonColore({super.key,this.couleur,required this.textBouton,
        this.onPressed = null,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: couleur??Colors.blue,
        foregroundColor: Colors.white,
        minimumSize: const Size(150, 50)
      ),
    
     child: Text(textBouton,style: const TextStyle(fontSize: 20),),
     );
  }
}