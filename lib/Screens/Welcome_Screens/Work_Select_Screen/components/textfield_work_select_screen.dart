import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/app_fonts.dart';
class TextFieldWorkSelectScreen extends StatelessWidget {
  final Function(String) onChanged;
  const TextFieldWorkSelectScreen({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.w,right: 20.w),
      child: TextField(
        style: const TextStyle(
            fontFamily: AppFonts.Baloo,
            fontSize: 14
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: "Search Your Work",
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                // color: AppColors.customRowSelected,
                width: 1.sp,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                width: 2.w,
                // color: AppColors.customRowSelected
              )
          ),
        ),
      ),
    );
  }
}
