import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Actions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Actions"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              var snackBar=const SnackBar(
                content: Text("Prendre une photo"),
                duration: Duration(seconds: 3), 
                 );
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
            } ,
             icon: Icon(Icons.photo_camera)
          ),

          IconButton(
            onPressed: () {
              var snackBar = const SnackBar(
                content:  Text("Faire une Recherche"),
                duration: Duration(seconds: 3),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar); 
            },
           icon: Icon(Icons.search)),

           //Bouton de Bouton
           PopupMenuButton(
            //icone pour acceder au menu flottant
            icon: const Icon(Icons.more_vert),
            //decalage du menu vert le bas
            offset: Offset(0, 45),
            //Construction des menus
            itemBuilder: (context) => <PopupMenuEntry>[
              //Premier menu
              PopupMenuItem(
                value: 0,
                onTap: () {
                  var snackBar =
                        const SnackBar(content: Text("Clique sur le Menu 1"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: const Text("Menu 1"),
              ),
              PopupMenuDivider(),
              //Deuxieme Menu
              PopupMenuItem(
                value: 1,
                onTap: () {
                  var snackBar =
                        const SnackBar(content: Text("Clique sur Parametres"));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                
                child: const Text("Parametres")
                )
            ],

           )

        ],
      ),
    );
  }
}