import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_fonts.dart';
class CustomText extends StatelessWidget {
  final String txt ;
  final Color color ;
  final double size ;
  final FontWeight fontWeight ;
  const CustomText({Key? key, required this.txt, required this.color, required this.size, required this.fontWeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          fontFamily: AppFonts.Monsterrat,
          color: color),
    );
  }
}
