import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/app_colors.dart';
import '../../../../../Utils/app_fonts.dart';
class TxtFieldNS extends StatelessWidget {
  final TextEditingController controller;
  const TxtFieldNS({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.name,
      controller: controller,
      style: TextStyle(
          fontFamily: AppFonts.Baloo,
          fontSize: 15.sp,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.greyTextColor,
        hintText: 'Enter your name',
        hintStyle: TextStyle(
            color: Colors.white
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: AppColors.customRowSelected,
              width: 2.sp,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
                width: 2.w,
                color: AppColors.customRowSelected
            )
        ),
      ),
    );
  }
}
