import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ListTile buildListTile(int index){
    return ListTile(
      leading:const CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(  Icons.person, color: Colors.grey),
      ),
      title: Text("Titre $index",
      style: const TextStyle(
        color: Colors.white,fontWeight: FontWeight.w600
      ),),
      subtitle: Text("Sous titre $index",
      style: const TextStyle(
        color: Colors.white54,fontWeight: FontWeight.w500
      ),),
      trailing: IconButton(onPressed: () {}, 
      icon: const Icon(Icons.arrow_forward_ios,color: Colors.white ,),
      )
    );
  }

  Widget builderListViewWithCards(int nombre){
    return ListView.builder(
      itemCount:nombre ,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index){
        //recupere une des 17 couleurs de material design
        var color =Colors.primaries[index % Colors.primaries.length][200];
        //utilisation de card qui entoure la ListTile
        return Container(
          width: 250,
          height: 200,
          //le card prend la taille du widget parent donc control de la taille
          child: Card(
            elevation: 5,//taille de l ombre portee
            color: color,//couleur de fond du card
            margin: const EdgeInsets.only(
              left: 15,
              right:25,
              top: 10,
              bottom: 550
            ),//les marges du card
            child: buildListTile(index),

          ), 
        );
      },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: builderListViewWithCards(10),
    );
  }
}