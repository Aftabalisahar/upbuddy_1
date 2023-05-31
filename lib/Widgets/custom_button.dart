import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/app_fonts.dart';

class CustomEelvatedBtn extends StatelessWidget {
  final String text;
  final Color color;

  final VoidCallback onTap;

  const CustomEelvatedBtn({Key? key, required this.text, required this.onTap, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          fixedSize: Size(350.w, 50.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.r),
          )),
      child: Text(text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontFamily: AppFonts.Baloo,
            fontWeight: FontWeight.w600,
          )),
    );
  }
}
