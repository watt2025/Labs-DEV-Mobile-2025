import 'package:flutter/material.dart';

class UserCircleAvatar extends StatelessWidget {
  final profilePhotoUrl;
  final double outterRadius;
  final double innerRadius;
  const UserCircleAvatar({super.key, required this.profilePhotoUrl,this.outterRadius=35,this.innerRadius=30});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      radius: outterRadius,
      child: CircleAvatar(
        backgroundColor: Colors.black,
        backgroundImage: NetworkImage(profilePhotoUrl),
        radius: innerRadius,
      ),
    ) ;
  }
}