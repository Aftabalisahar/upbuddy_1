import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/app_fonts.dart';
class VMJobContainer extends StatelessWidget {
  final String title ;
  final String rate ;
  final String time ;
  final String description ;
  final String workLocation ;
  const VMJobContainer({Key? key, required this.rate, required this.time, required this.description, required this.workLocation, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
            style: TextStyle(
          fontFamily: AppFonts.Monsterrat,
          fontWeight: FontWeight.w500,
          fontSize: 18.sp),),
          SizedBox(height: 15.h,),
          Row(
            children: [
              Text(rate,
                style: TextStyle(
                    fontFamily: AppFonts.Monsterrat,
                    fontWeight: FontWeight.w300,
                    fontSize: 18.sp),
              ),
              Spacer(),
              Icon(Icons.location_on_outlined,
                size: 16.sp,
              ),
              Text(workLocation,
                style: TextStyle(
                    fontFamily: AppFonts.Monsterrat,
                    fontWeight: FontWeight.w300,
                    fontSize: 11.sp),
              ),
              SizedBox(width: 12.w,),
              Icon(Icons.access_time,
                size: 16.sp,
              ),
              Text(' $time ago',
                style: TextStyle(
                    fontFamily: AppFonts.Monsterrat,
                    fontWeight: FontWeight.w300,
                    fontSize: 11.sp),
              ),
            ],
          ),
          SizedBox(height: 15.h,),
          Wrap(
            children: [Text(description,
              style: TextStyle(
                  fontFamily: AppFonts.Monsterrat,
                  fontWeight: FontWeight.w300,
                  fontSize: 14.sp),),
          ]),
          SizedBox(height: 15.h,),
          Text("Skills",style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            TextButton(onPressed: (){}, child: Text("Flutter")),
            TextButton(onPressed: (){}, child: Text("Web")),
            TextButton(onPressed: (){}, child: Text("+1 More")),
          ],),
        ],
      ),
    );
  }
}
