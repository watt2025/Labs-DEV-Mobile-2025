import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo Tabbar",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple
           ),
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
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Demo TabBar"),
          backgroundColor: const Color(0xFF208C58),
          foregroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: const Color(0xFF00da5f),
            unselectedLabelColor: Colors.grey.shade400,
            tabs: const [
              Tab(icon: Icon(Icons.chat_bubble),text: "Discussion",),
              Tab(icon: Icon(Icons.call),text: "Appels",),
              Tab(icon: Icon(Icons.settings),text: "Parametres",)
            ]
             ),
        ),
        body: TabBarView(
          children:[
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFcce8e2),
              ),
              child: const Icon(Icons.chat,size: 60,),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFadcae6),
              ),
              child: const Icon(Icons.call,size: 60,),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF74f8e5)
              ),
              child: const Icon(Icons.settings,size: 60,),
            )
          ]
        ),
      ),
      
      );
  }
}