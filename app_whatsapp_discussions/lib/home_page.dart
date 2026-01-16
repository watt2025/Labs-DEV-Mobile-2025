import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buidListDiscussions(int nombre){
    return ListView.builder(
      itemCount: nombre,
      itemBuilder: (context, index) {
        return ListTile(
          //leading
          leading: getAvatar(index),
          //title
          title: Text('User $index',),
          //subtitle
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.check),Text("Dernier message $index")
            ],
          ),
          //trailing
          trailing: buildTrailing(index),
        );
      },
    );
  }

  CircleAvatar getAvatar(int index) {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage('https://picsum.photos/300/200?random=$index'),
    );
  }


  Widget buildTrailing(int index){
    var msgtime="${DateTime.now().hour}:${(DateTime.now().minute-index)%60}";
    return SizedBox(
      width:50 ,//permet d´augmenter la taille du trailing
      child: Column(
        //contient les elements
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //texte de l´heure
          Text(msgtime,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 10,
          ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon( Icons.volume_off,size: 18,),
                //badge de nombre de messages
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Text('${(index+10)}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Whatsapp Discussions',
        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: buidListDiscussions(100),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.green,
        child: const Icon(Icons.comment,
        color: Colors.white,
        ),
      ),
    );
  }
}