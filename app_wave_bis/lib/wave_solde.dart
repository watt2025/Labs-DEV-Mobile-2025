import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WaveSolde extends StatefulWidget {
  final int solde;
  const WaveSolde({super.key,required this.solde});

  @override
  State<WaveSolde> createState() => _WaveSoldeState();
}

class _WaveSoldeState extends State<WaveSolde> {

  TextEditingController controllerSolde=TextEditingController();
  var cacherSolde=false;

  @override
  Widget build(BuildContext context) {
    //Formattage de la somme  avec des espaces  pour separer les milliers
  var format=NumberFormat("###,###,###,###", "fr_FR");
  controllerSolde.text = format.format(widget.solde);
    return Container(
      alignment: Alignment.center,height: 60,
      margin: const EdgeInsets.symmetric(horizontal: 70),
      //un TextField permet d´implanter les fonction de cacher ou d´afficher un solde
      child: TextField(
        textAlign: TextAlign.center, readOnly: true,//empeche l´edition
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 35),
        controller: controllerSolde,
        obscureText: 
            cacherSolde,//determine si la valeur va etre affichee ou pas
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
              suffixIcon: IconButton(
               icon: Icon(
                //chage l´icone en fonction de la visibilite du montant
                cacherSolde? Icons.visibility : Icons.visibility_off,
                color: Colors.white, size: 30,
               ),
               onPressed: (){
                setState(() {
                  cacherSolde=!cacherSolde; // MAJ de l´affichage
                });
               },
               ),
               suffix: const Text('F',//suffixe F pour FCFA
               style: TextStyle(color: Colors.white,fontSize: 20),)
               ),
            ),

      
    );
  }
}