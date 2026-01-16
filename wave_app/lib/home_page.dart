import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget buildWaveAppBar(){
    return Container(
      height: 400,
      padding: EdgeInsets.only(top: 30,),
      decoration: BoxDecoration(
        color: const Color(0xFF4F3Fc6),
      ),
      //height: 200,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white,),
            subtitle: Row(
            
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('150.500F', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                SizedBox(width: 4,),
                Icon(Icons.remove_red_eye_outlined, color: Colors.white, size: 20,),
              ],
            ),

          ),
          Container(
            //height: 230,
            padding: EdgeInsets.all(130),
            decoration: BoxDecoration(
            
              image: DecorationImage(
                
                image: AssetImage('assets/wave.png',),
                
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildHistoriqueList(int nombre){
    return ListView.builder(
      itemCount: nombre,
      itemBuilder: (context, index){
        return ListTile(
          title: Text('depot $index'),
          subtitle: Text(DateTime.now().toString()),
          trailing: Text('+ ${index * 1000} F'),
        );
      }
    );
  }

  Widget buildServiceList(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [
          Icon(Icons.person, size: 40, color: Colors.lightBlueAccent,),
          SizedBox(height: 8,),
          Text('SEND', style: TextStyle(color: Colors.lightBlueAccent),)
        ],),
        SizedBox(width: 50,),
        Column(
          children: [
            Icon(Icons.shopping_cart, size: 40, color: Colors.orangeAccent,),
            SizedBox(height: 8,),
            Text('PAYEMENTS', style: TextStyle(color: Colors.orangeAccent),)
          ],
        ),
        SizedBox(width: 40,),
        Column(
          children: [
            Icon(Icons.smartphone, size: 40, color: Colors.lightBlueAccent,),  
            SizedBox(height: 8,),
            Text('AIRTIME', style: TextStyle(color: Colors.lightBlueAccent),)
          ],
        )
      ],
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildWaveAppBar(),
          Container(
           margin: EdgeInsets.only(right: 15,left: 15),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(16),
            child: buildServiceList(),
          ),

          Positioned(
            child: Expanded(
              child: buildHistoriqueList(20),
            ),
          ),
        ],
      ),
    );
  }
}