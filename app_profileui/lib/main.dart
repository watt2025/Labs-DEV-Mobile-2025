import 'package:app_profileui/social_networks.dart';
import 'package:flutter/material.dart';
import 'package:app_profileui/header_widget.dart';

void main(List<String>args){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget buidBobliographie(){
    return const Padding(

      padding:EdgeInsetsGeometry.symmetric(
         horizontal: 20,
      ) ,
        child: Column(
          children: [
            Text("Bibliographie",
            style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w600),
            ),
            Padding(padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
            child: Text(
              "Disparu le 3 Avril 2020,Golbert Diagne est né en septembre 1941 á Saint-Louis."
              "Golbert,fils de Malal Diagne et Diariyatou Lobé N'Doye est elevé chez ses "
              "grands parents au quartier de Guet N´Dar á Saint-Louis",
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),
              ),
            )
          ],
        ),
      );
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          // creation d´un objet de la classe Headerwidget
          HeaderWidget(
            backgroundImagePath: "https://images.unsplash.com/photo-1629300678017-eb3cb4eb4b77?q=80&w=1989&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            profileImagePath: "assets/golbert-diagne.jpg",
            height: height/2,
          ), 
          SizedBox(
            height: 75,
          ),
          const SocialMediaWidget(),
          const SizedBox(
            height: 15,
          ),
          buidBobliographie(),
          
        ],
        

      ),
    );
  }
}