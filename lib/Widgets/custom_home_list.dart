import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import '../Utils/app_fonts.dart';
import '../Utils/app_colors.dart';

class CustomHomeList extends StatelessWidget {
  final Color color ;
  final String txt ;
  final Callback onTap ;
  final String path1 ;
  final IconData path2 ;
  final double radius ;
  final Color iconColor ;
  const CustomHomeList({Key? key, required this.color, required this.txt, required this.onTap, required this.path1, required this.path2, required this.radius, required this.iconColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 3.h,bottom: 3.h),
        padding: EdgeInsets.only(left: 28.w,right: 41.68.w),
        height: 91.h,
        width: 372.w,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(width: 2.w,color: Colors.black12)
        ),
        child: Row(
          children: [
            Image.asset(path1),
            SizedBox(width: 15.w,),
            Text(txt,
              style: TextStyle(
                color: AppColors.textBlack,
                fontSize: 16.sp,
                fontFamily: AppFonts.Baloo,
                fontWeight: FontWeight.w400,
              ),),
            Expanded(child: SizedBox()),
            Icon(path2,color: iconColor,)
          ],
        ),
      ),
    );
  }
}
