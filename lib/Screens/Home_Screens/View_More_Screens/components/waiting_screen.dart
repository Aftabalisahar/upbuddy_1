import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Utils/app_fonts.dart';
import 'package:upbuddy/Utils/app_images.dart';
class WaitingScreen extends StatelessWidget {
  const WaitingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 138.h,),
        Image.asset(AppImages.androidIcon),
        Padding(
          padding: EdgeInsets.only(top: 45.h,bottom: 31.h),
          child: Text("Please Wait",
            style: TextStyle(fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          fontFamily: AppFonts.Monsterrat),),
        ),
        Text("We are generating the cover letter for you",
          style: TextStyle(fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black38,
            fontFamily: AppFonts.Monsterrat),),

      ],
    );
  }
}
