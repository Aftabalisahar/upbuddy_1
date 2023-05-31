import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_fonts.dart';

class CustomContainer extends StatelessWidget {
  final Color bgColor ;
  final String image ;
  final String title ;
  final VoidCallback onTab;
  final bool typeImage;
  const CustomContainer({Key? key, required this.bgColor, required this.image, required this.title, required this.onTab, required this.typeImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: 327.h,
        width: 288.w,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16.r)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            typeImage ? Image.asset(image) : Icon(Icons.add),
            Text(title,
              style: TextStyle(
                  fontSize: 40.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppFonts.Spartan
              ),
            )
          ],
        ),
      ),
    );
  }
}
