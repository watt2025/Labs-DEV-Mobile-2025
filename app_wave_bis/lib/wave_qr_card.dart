import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';


class WaveQrCard extends StatelessWidget {
  final int idCompte;
  const WaveQrCard({super.key,this.idCompte=0});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.symmetric(horizontal: 40),
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFF7FCAEE),
        image: const DecorationImage(
          //image de fond
          image: AssetImage('assets/card.png'),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,borderRadius: BorderRadius.circular(20),
        ),
        //Generation du Qr Code a partir de la valeur de idCompte
        child: QrImageView(version: 4,data: "$idCompte"),
      ),
    );
  }
}