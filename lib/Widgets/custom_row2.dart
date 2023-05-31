import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import '../Utils/app_fonts.dart';
import '../Utils/app_colors.dart';
import '../Utils/app_images.dart';

class CustomRow2 extends StatelessWidget {
  final Color color ;
  final String txt ;
  final String img ;
  final Callback onTap ;
  const CustomRow2({Key? key, required this.color, required this.txt, required this.onTap, required this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 28.w,right: 41.68.w),
        height: 91.h,
        width: 350.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.r)
        ),
        child: Row(
          children: [
            Text(txt,
              style: TextStyle(
              color: AppColors.textBlack,
                fontSize: 16.sp,
                fontFamily: AppFonts.Baloo,
                fontWeight: FontWeight.w400,
            ),
            ),
            Expanded(child: SizedBox()),
            Image.asset(img)
          ],
        ),
      ),
    );
  }
}
