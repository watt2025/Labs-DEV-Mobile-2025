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
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepOrange),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildbox(text,color){
    return Container(
      width: 200,
      height: 100,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Widget Column",),centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [buildbox("Box 1", Colors.greenAccent),
                   buildbox("Box 2", Colors.orangeAccent),
                   buildbox("Box 3", Colors.redAccent),
                   buildbox("Box 4", Colors.blueAccent)
                   ],
      ),
    );
  }
}
