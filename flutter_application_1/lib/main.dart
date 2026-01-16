import 'package:flutter/material.dart';

void main(List<String>args){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu Coulissant"),
            ),
            ListTile(
              title: Text("profile"),
              leading: Icon(Icons.account_circle,size: 40,
              color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
   /*
    return Scaffold(
      body: Center(
        child:Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          margin:EdgeInsets.all(25),
          padding: EdgeInsets.all(25),
         
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1733254732045-c97fddb49797?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=687"),
              fit: BoxFit.cover,)
            ),
          height: double.infinity,
          width: double.infinity,
          child: Text("Ma premiere image",style: TextStyle(color: const Color(0xFFFAF8F8),fontSize: 25,),textAlign: TextAlign.center,),
          ),
          
        ),
      ),
    );
    */
  }
}