import 'package:app_social_network/user_circle_avatar.dart';
import 'package:flutter/material.dart';

class DiscusssionTile extends StatelessWidget {
  final String? title;
  final String? numberOfNewMessages;
  final String? timeLastUpdate;
  final String? message;
  final String? profilePhotoUrl;
  const DiscusssionTile({super.key,required this.title, this.numberOfNewMessages, this.timeLastUpdate, this.message, this.profilePhotoUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: ListTile(
        leading: UserCircleAvatar(profilePhotoUrl:  profilePhotoUrl ),
        title: Text(title ?? ""),
        subtitle: Text(message ?? ""),
        trailing: Container(
          width: 40,
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(timeLastUpdate ?? ""),
              SizedBox(height: 2,),
              CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xFF00ba9d),
                child: Text(numberOfNewMessages ?? "", 
                style: TextStyle(color: Colors.white, fontSize: 12),),
              )
            ],
          ),
        ),
      ),
    );
  }
}