import 'dart:math';

import 'package:app_wave_bis/wave_barre_outils.dart';
import 'package:app_wave_bis/wave_qr_card.dart';
import 'package:app_wave_bis/wave_solde.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget buildOperationsCompte(){
    var typeOpeations=<String>[
      "Retrait",
      "Depot",
      "Transfert A M. XXX",
      "Transfert A Mme YYY"
    ];
    return SizedBox(
      height: MediaQuery.of(context).size.height/2,
      width: MediaQuery.of(context).size.width-20,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(typeOpeations[Random().nextInt(4)],
            style: TextStyle(
              color: const Color(0xFF4F3Fc6),fontWeight: FontWeight.w500
            ),),
            subtitle: Text(
              "${DateTime.now()}",style: TextStyle(
                color: Colors.grey.shade500,fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Text(
              "${Random().nextInt(10000)} F",
              style:const TextStyle(
                  color: Color(0xFF4F3Fc6),fontSize: 14,
                  fontWeight: FontWeight.w600
              ),
            ),
          );
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4F3Fc6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF4F3Fc6),
        leading: IconButton(onPressed: () {},
         icon: const Icon(
          Icons.settings,
          color: Colors.white,
         )),
      ),

      body: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          //panneau blanc en bas
          Positioned(
            top: 200,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white
              ),
            ),
          ),

          //contenu de la page
          Column(
            children: [
              //solde
              WaveSolde(solde: Random().nextInt(500000)),
              //Card pour le QrCode
              WaveQrCard(idCompte: Random().nextInt(100000),),
              //barre d´outils
              WaveBarreOutils(),
              //Liste operations
              Expanded(child: buildOperationsCompte())
            ],
          )
        ],
      ),
    );
  }
}