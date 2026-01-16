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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        height: double.infinity,
        width: double.infinity,

        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1381"),
          fit: BoxFit.cover)
        ),
        alignment: Alignment.centerRight,
        child: Text("Pizzaria",style:TextStyle(color: Colors.white,fontSize: 40), ),
padding:EdgeInsets.only(right: 160),
      ),
    );
    /*
   return Scaffold(
    backgroundColor: Colors.grey,
    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.deepOrange,Colors.red]
        )
      ),
      alignment: Alignment.topCenter,
      child: Container(
        height: MediaQuery.of(context).size.height*2/3,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            //topRight: Radius.circular(60),
          )
        ),
        child: const Text("Bienve sur votre espace univers des metiers",style: TextStyle(color: Colors.orange,fontSize: 60,fontWeight: FontWeight.w900),),
      ),

    ),
   );
   */
   /*
    return Scaffold(
      backgroundColor: Colors.grey,
      body:Center( child:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient:const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.white,Colors.blueAccent]
          )
          ),
          child: Center(
            child: Container(
              width: 400,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.white10,Colors.white24]
                ),
                border: Border.all(color: Colors.white)
              ),
              alignment: Alignment.center,
              child: const Text("Degrades",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight:FontWeight.w900,),),
            ),
          ),
      )
    )
    );
    */
  }
}