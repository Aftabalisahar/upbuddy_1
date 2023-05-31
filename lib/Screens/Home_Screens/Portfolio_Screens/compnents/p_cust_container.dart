import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Utils/app_fonts.dart';

class PContainer extends StatelessWidget {
  const PContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Container(
        padding: EdgeInsets.all(20.sp),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(10.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upalert: ai flutter app",
              style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppFonts.Monsterrat),
            ),
            SizedBox(height: 10.h,),
            Text("AI cover letter and job alerts.",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily: AppFonts.Monsterrat,
                    color: Colors.black45)
            ),
            SizedBox(height: 10.h,),
            Text("https://play.google.com/store/app/details?..",
                style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w300,
                    fontFamily: AppFonts.Monsterrat)),
            Row(
              children: [
                TextButton(onPressed: () {}, child: Text("Flutter")),
                Spacer(),
                TextButton(onPressed: () {}, child: Text("Web")),
                Spacer(),
                TextButton(onPressed: () {}, child: Text("1+more")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
