import 'package:flutter/material.dart';

class WaveBarreOutils extends StatelessWidget {
  const WaveBarreOutils({super.key});

  Widget buildIconColumnButtonWithText({
    Color? color,IconData? icon,String? label}){
      return Column(
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFFE9F6FE),
            child: Icon(icon ?? Icons.task,color: color ?? Colors.blue,),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            label ?? "No Label",
            style: TextStyle(
              fontWeight: FontWeight.w600,color: color ?? const Color(0xFF4947CD)
            ),
          )
        ],
      );
    }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildIconColumnButtonWithText(
            icon: Icons.person,label: 'TRANSFERT',color: const Color(0xFF4749CD),
          ),
          buildIconColumnButtonWithText(
            icon: Icons.shopping_cart,label: 'PAIEMENTS',color: const Color(0xFFF47F20)
          ),
          buildIconColumnButtonWithText(
            icon: Icons.smartphone,label: 'CREDITS',color: const Color(0xFF1CD8FF)
          ),
          buildIconColumnButtonWithText(
            icon: Icons.smartphone,label: 'BANQUE',color: Colors.red
          )
        ],
      ),
    );
  }
}