import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo BottomNavBar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple
          ),
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
  int currentIndex=0;
  List<Widget> pages = [
    const Icon(Icons.home,size: 150,),
    const Icon(Icons.search_rounded,size: 150,),
    const Icon(Icons.account_box_outlined,size: 150,),
    const Icon(Icons.add,size: 150,)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo BottomNavBar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex ,
        onTap: (value) {
          setState(() {
            currentIndex=value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Accueil"),
          BottomNavigationBarItem(icon: Icon(Icons.search_off_rounded),label: "Recherche"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined),label: "Profil"),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: "Ajouter")
        ]
        ),
        body: Center(
          child: pages[currentIndex],
        ),
    );
  }
}