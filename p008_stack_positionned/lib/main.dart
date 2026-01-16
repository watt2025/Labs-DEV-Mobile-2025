import 'package:flutter/material.dart';

void main(List<String>args){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Stack',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Container buildBox(String text,double height,double width,Color color){
    return Container(
      color: color,
      padding: const EdgeInsets.all(5),
      height:height ,
      width: width,
      child: Text(
        text,
        style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      ),
    );
  }

 Column buildColumnButton(){
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
          child: const Icon(Icons.settings,color: Colors.white,),
          ),
          const SizedBox(height: 5,),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
          child: const Icon(Icons.phone,color: Colors.white,),
          ),
          const SizedBox(height: 5,),
          FloatingActionButton(
            backgroundColor: Colors.grey.shade200,
            onPressed: () {},
            child: const Icon(Icons.camera,color: Colors.black,),
            )
        ],
      );
    }

    Row buildRowButton(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {},
            child: const Icon(Icons.settings,color: Colors.white,),
            ),
            const SizedBox(width: 5,),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: const Icon(Icons.phone,color: Colors.white,),
            ),
            const SizedBox(width: 5,),
            FloatingActionButton(
              backgroundColor: Colors.grey.shade200,
              onPressed: () {},
              child: Icon(Icons.camera,color: Colors.black,),
            )
        ],
      );
    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(
          "Widget Stack",
        ),
        centerTitle: true,
      ),
     /*
      body: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.topLeft,
          child:buildBox("Box 1", 300, 300, Colors.greenAccent),
          ),
          Align(
            alignment: Alignment.bottomRight,
          child:buildBox("Box 2", 250, 250, Colors.redAccent),
          ),
          Align(
            alignment: Alignment.topRight,
          child: buildBox("Box 3", 200, 200, Colors.orangeAccent),
          ),
          Align(
            alignment: Alignment.bottomLeft,
          child:buildBox("Box 4", 150, 150, Colors.blueAccent),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(padding: const EdgeInsets.only(right: 5),
            child: buildColumnButton(),
            ),
          )
        ],
      ),
      */
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
            top: 30,
            left: 30,
            child: buildBox("Box 1", 250, 250, Colors.greenAccent),
          ),
          Positioned(
            top: 70,
            left: 60,
            child: buildBox("Box 2", 250, 250, Colors.redAccent)
            ),
            Positioned(
              top: 130,
              left: 90,
              child: buildBox("Box 3", 250, 250, Colors.orangeAccent)
              ),
              Positioned(
                top: 170,
                left: 120,
                child: buildBox("Box 4", 250,250, Colors.blueAccent)
                ),
                Positioned(
                  bottom: 50,
                  right: 100,
                  child:buildRowButton() )
        ],
      ),
    );
  }
}