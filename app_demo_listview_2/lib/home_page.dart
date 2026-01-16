import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Widget builderListView(int nombre){
    return ListView.builder(
      itemCount: nombre, // nombre d'éléments dans la liste
      //Le widget representant le widge (ligne) numero index
      itemBuilder: (context, index){
        return ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon( Icons.person, color: Colors.white,),
          ),
          title: Text("Titre $index"),
          subtitle: Text("Sous titre $index"),
          trailing: IconButton(onPressed:() {},
           icon:const Icon(Icons.arrow_forward)
           ),
        );
      },
    );

  }


  Widget separatedBuilderListView(int nombre){
    return ListView.separated(
      itemCount: nombre,
      itemBuilder: (context,index){
        return ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.blue,
            child:Icon( Icons.person, color: Colors.white,),
          ),
          title: Text("Titre $index"),
          subtitle: Text("Sous titre $index"),
          trailing: IconButton(onPressed:() {},
           icon:const Icon(Icons.arrow_forward_ios)
           ),
        );
      },
       separatorBuilder: (context, index) =>Divider(
        thickness: 3,
        color: Colors.grey.shade300 ),
   );
  }

      


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: builderListView(100)
      body: separatedBuilderListView(100),
    );
  }
} 