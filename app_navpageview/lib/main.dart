import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo PageView",
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
  final PageController myPageController=PageController();

  Widget buildPage(String titre,Color color){
    return Container(
      color: color,
      margin: EdgeInsets.zero,
      child: Center(
        child: Text(
          titre,
          style: TextStyle(
            fontSize: 50,color: Colors.white
          ),
        ),
      ), 
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: myPageController,
            scrollDirection: Axis.horizontal,
            children: [
              buildPage("Page 1", Colors.greenAccent),
              buildPage("Page 2", Colors.amberAccent),
              buildPage("Page 3", Colors.blueAccent),
              buildPage("Page 4", Colors.redAccent)
            ],
          ),
          
          Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 50),
            child: SmoothPageIndicator(controller: myPageController, count: 4),
          )
        ],
      )
    );
  }
}