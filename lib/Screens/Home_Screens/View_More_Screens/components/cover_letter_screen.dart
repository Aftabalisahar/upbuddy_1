import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Utils/app_fonts.dart';
class CoverLetterScreen extends StatelessWidget {
  const CoverLetterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40.h,),
        Text("Hello !\n",
          style: TextStyle(
              fontFamily: AppFonts.Monsterrat,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp
          ),
        ),
        Text(
            "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.\n\n"
            "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.\n\n"
            "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.\n\n"
            "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.\n\n",
          style: TextStyle(
            fontFamily: AppFonts.Monsterrat,
            fontWeight: FontWeight.w300,
            fontSize: 12.sp
          ),
        ),
        Text("Thanks",
          style: TextStyle(
              fontFamily: AppFonts.Monsterrat,
              fontWeight: FontWeight.w600,
              fontSize: 16.sp
          )),
      ],
    );
  }
}
