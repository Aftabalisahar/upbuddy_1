import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/app_fonts.dart';

class WelcomeScreenRow extends StatelessWidget {
  final String text ;
  final String text2 ;
  final String image ;
  const WelcomeScreenRow({Key? key, required this.text, required this.text2, required this.image, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Row(
            children: [
              Image.asset(image),
              SizedBox(
                width: 10.w,
              ),
              Text(text,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                fontFamily: AppFonts.Baloo
              ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 62.w,right: 62.w),
          child: Text(text2,
            style:TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontFamily: AppFonts.Baloo,
            ),
          ),
        ),
      ],
    );
  }
}
