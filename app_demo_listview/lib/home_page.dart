import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildItem(
        {
          double heigth = 200,
          double? width,
          Color color = Colors.orange,
          Widget? child,
          BoxShape? shape
        } 
      ) {
        return Container(
          height: heigth,
          width: width?? MediaQuery.of(context).size.width - 40,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color,
            shape: shape ?? BoxShape.rectangle,
            gradient: LinearGradient(colors: [color,color.withOpacity(0.5)]),
          ),
          child: child ?? Text("item",
         style: TextStyle(color: Colors.white),textAlign:TextAlign.center , ),
        );
      }

      Widget columnOversized() {
        //cretaion d´une colonne avec quatre elements
        //qui ont chacun 200px de hauteur
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildItem(),
            buildItem(color: Colors.red),
            buildItem(color: Colors.green),
            buildItem(color: Colors.blue),
            buildItem(color: Colors.pink),
          ],
        );
      }

      ListView verticalLisview(){
        return ListView(
          children: [
            buildItem(),
            buildItem(color: Colors.red),
            buildItem(color: Colors.green),
            buildItem(color: Colors.blue),
            buildItem(color: Colors.pink),
            buildItem(color: Colors.red),
            buildItem(color: Colors.green),
            buildItem(color: Colors.blue),
            buildItem(color: Colors.pink),
          ],
        );
      }

      Row rowOversized() {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildItem(width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.red,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.green,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.blue,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.pink,width: 200,shape: BoxShape.circle),
          ],
        );
      }

      ListView horizontalListviewFullPage(){
        return  ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildItem(width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.red,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.green,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.blue,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.pink,width: 200,shape: BoxShape.circle),
          ],
        );
      }

      Widget horizontalListViewSized(){
                return SizedBox(
          height: 200,
          child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            buildItem(width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.red,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.green,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.blue,width: 200,shape: BoxShape.circle),
            buildItem(color: Colors.pink,width: 200,shape: BoxShape.circle),
          ],
        ),
        );
      } 

    //Utilisation de expanded
      Widget horiZontalAndVerticalListViewCombinedInSamePage(){
        return Column(
          children: [
            horizontalListViewSized(),
            //utilisation d´un expand,
            //s´etend sur tout l´espace restante
            Expanded(
              child: Container(
                //container colore pour faire apparaitre la taille
                color: const Color(0xFF333230),
                child: verticalLisview(),
              ),
            )
          ],
        );
      }


      // Utilisation de container
       Widget horiZontalAndVerticalListViewCombinedInSamePage2(){
        return Column(
          children: [ 
            Expanded(
              child: horizontalListViewSized(),
            ),
            //utilisation d´un container ou SizedBox,
            //avec une hauteur definie
            Container(
                height: MediaQuery.of(context).size.height/2,
                color: const Color(0xFF333230),
                child: verticalLisview(),
              ),
            
          ],
        );
      }


      


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: columnOversized(),
      //body: verticalLisview(),
      //body: rowOversized(),
     // body: horizontalListviewFullPage(),
     //body: horizontalListViewSized(),
     //body: horiZontalAndVerticalListViewCombinedInSamePage(),
     body: horiZontalAndVerticalListViewCombinedInSamePage2(),
    );
  }
} 