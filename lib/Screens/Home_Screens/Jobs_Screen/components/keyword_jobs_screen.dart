import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/app_colors.dart';
import '../../../../../Utils/app_fonts.dart';
import '../../../../../Utils/app_images.dart';
import '../add_custom_keywords.dart';
class KeyWordScreen extends StatelessWidget {
  const KeyWordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 124.h,
          ),
          Image.asset(AppImages.workingOn),
          SizedBox(
            height: 9.h,
          ),
          Text(
            'No Custom Keyword Jobs Found',
            style: TextStyle(
                color: AppColors.greyTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                fontFamily: AppFonts.Monsterrat),
          ),
          SizedBox(
            height: 13.h,
          ),
          Text(
            'You can add keywords to see jobs matching your Keywords.',
            style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                fontFamily: AppFonts.Monsterrat),
          ),
          SizedBox(
            height: 29.h,
          ),
          OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddCustomKeywords(),));
              },
              style: OutlinedButton.styleFrom(
                  side: BorderSide(color: AppColors.upAlertColor)),
              child: Text('Add Custom Keywords')),
          SizedBox(
            height: 154.h,
          )
        ],
      ),
    );
  }
}
