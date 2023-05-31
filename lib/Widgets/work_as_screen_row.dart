import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/app_fonts.dart';
import '../Utils/app_colors.dart';
import '../Utils/app_images.dart';

class WorkAsScreenRow extends StatelessWidget {
  final String txt ;
  final String image ;
  const WorkAsScreenRow({Key? key, required this.txt, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w,right: 20.w),
      child: Row(
        children: [
          Image.asset(image),
          SizedBox(
            width: 18.w,
          ),
          Text(txt,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: AppFonts.Baloo,
            fontSize: 18.sp,
          ),
          )
        ],
      ),
    );
  }
}
