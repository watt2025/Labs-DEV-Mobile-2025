import 'package:flutter/material.dart';
import 'package:app_navigator/fenetre_orange.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const FenetreOrange();
  }
}