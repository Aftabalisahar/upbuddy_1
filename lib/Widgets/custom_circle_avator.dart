import 'package:flutter/material.dart';

import '../Utils/app_images.dart';
class MyCircleAvator extends StatelessWidget {
  final bool isImage ;
  final String image1 ;
  final IconData icon ;
  final VoidCallback onTap ;
  const MyCircleAvator({Key? key, required this.isImage, required this.image1, required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Colors.black12,
        radius: 30,
        child: isImage ? Image.asset(image1) : Icon(icon,color: Colors.black,),
      ),
    );
  }
}
