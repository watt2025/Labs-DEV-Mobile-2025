import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}




class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer Demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true

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
  List<Widget>fenetres=[
    buildFenetre("Accueil",bgcolor:Colors.red),
    buildFenetre("Profil",bgcolor:Colors.blue),
    buildFenetre("PlayLists",bgcolor:Colors.green)
  ];

  var currentFenetre=0;

  static Widget buildFenetre(String title,{Color bgcolor=Colors.grey}){
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bgcolor
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 40,color: Colors.white),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Demo"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            //DrawerHeader
            DrawerHeader(
             decoration: BoxDecoration(
              color: Colors.green
             ), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:AssetImage("assets/youssou_ndour.jpg")
                  ),
                  Text(
                    "Youssou Ndour",
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.bold),
                  ),
                  Text( 
                    "Musicien Senegalais",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 13
                    ),
                  )
                ],
              )
            ),

            //ListTile
            ListTile(
              leading: Icon(Icons.home_work,size:40 ,color: Colors.red,),
              title: Text("Accueil"),
              onTap: () {
                setState(() {
                  currentFenetre=0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle,size: 40,color: Colors.blue,),
              title: Text("Profil"),
              onTap: () {
                setState(() {
                  currentFenetre=1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.library_music,size: 40,color: Colors.green,),
              title: Text("PlayLists"),
              onTap: () {
                setState(() {
                  currentFenetre=2;
                Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(Icons.settings,size:40, color: Colors.deepOrangeAccent,),
              title: Text("Configurations"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:(context) => const NewWindow(textMssage: "Configurations", bgcolor: Colors.orange)
                  )
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.cloud_download_rounded,size: 40,color: Colors.purple,),
              title: Text("Telechargements"),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder:(context) => const NewWindow(textMssage: "Telechargements", bgcolor: Colors.purple))
                );
              },
            ),

  
          ],
        ),
      ),
      body: fenetres[currentFenetre],
    );
  }
}


class NewWindow extends StatelessWidget {
  final String textMssage;
  final Color bgcolor;

  const NewWindow({super.key,required this.textMssage,required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: bgcolor,
        ),
        child: Center(
          child: Text(
            textMssage,
            style: TextStyle(fontSize: 40,color: Colors.white),
          ),
        ),
      ),
    );
  }
}