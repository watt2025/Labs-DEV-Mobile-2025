import 'dart:math';

import 'package:app_social_network/round_corner_panel.dart';
import 'package:app_social_network/user_circle_avatar.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/scheduler.dart';
import 'package:app_social_network/discusssion_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildheading(){
    TextStyle menuStyle =
        const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w300);
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          height: 200,
          width: double.infinity,
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.menu, color: Colors.white, size: 30,),
                  Icon(Icons.search, color: Colors.white, size: 30,),
                ],
              ),
              const SizedBox(height: 30,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {},
                   child: Text('Messages', style: menuStyle,)),
                   TextButton(onPressed: () {},
                    child: Text('EN LIGNE', style: menuStyle,)),
                    TextButton(onPressed: () {}, 
                    child:Text('GROUPES', style: menuStyle,))
                ],
              )
            ],
          ),
        );
  }

  Widget buildHorizontalListContacts(){
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20,right: 0,top: 5,bottom: 5),
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UserCircleAvatar(profilePhotoUrl: "https://picsum.photos/300/200?random=$index",
                innerRadius: 33,
                ),
                Text('User $index', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)
              ],
            ),
          );
        },
      ),
    );
  }

  Row buildFavoriteLine(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Contacts favoris', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
        Icon(Icons.more_horiz, color: Colors.white, size: 22,)
        
      ],
    );
  }

  Widget buildFavoriteContactsPanel(){
    return Column(
        children: [
          buildFavoriteLine(),
          buildHorizontalListContacts(),
          
        ],
    );
  }

  Widget buildDiscussionPanel(){
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return DiscusssionTile(
          title: 'User $index ',
          message: 'Last message $index',
          profilePhotoUrl: 'https://picsum.photos/300/200?random=$index',
          numberOfNewMessages: '${Random().nextInt(99)}',
          timeLastUpdate: '${Random().nextInt(24).toString().padLeft(2, '0')}:'
              '${Random().nextInt(60).toString().padLeft(2, '0')}',
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333239),//couleur de Fond d´ecran
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF77bfa8),
        child: const Icon(Icons.message, color: Colors.white,),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(clipBehavior: Clip.none,children: [
          //zone entete
          buildheading(),
          //zone contacts favoris
          Positioned(
            top: 160,
            left: 0,
            right: 0,
            height: 250,
            child: RoundCornerPanel(child:buildFavoriteContactsPanel(),)
          ),

          //zone discussions 
          Positioned(
            top: 360,
            left: 0,
            right: 0,
            bottom: 0,
            child: RoundCornerPanel(
              color: Color(0xFFf4fffc),
              child: buildDiscussionPanel(),
            )
          )
        ],),
      ),
    );
  }
}