import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaWidget extends StatelessWidget {
  Widget buildButton(icon,color)=>IconButton(
    onPressed: () {}, 
    icon: Icon(
      icon,
      size: 50,
      color: color,
    ),
 );
  const SocialMediaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildButton(FontAwesomeIcons.facebook, Colors.blue.shade900),
          buildButton(FontAwesomeIcons.twitter, Colors.blue),
          buildButton(FontAwesomeIcons.whatsapp, Colors.green),
          buildButton(FontAwesomeIcons.youtube, Colors.red)
        ],
      ),
    );
  }
}