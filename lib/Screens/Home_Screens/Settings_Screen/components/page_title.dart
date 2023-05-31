import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/app_colors.dart';
import '../../../../../Utils/app_fonts.dart';

class PageTitle extends StatelessWidget {
  final String txt;
  const PageTitle({Key? key, required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(txt,
      style: TextStyle(
          color: AppColors.upAlertColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          fontFamily: AppFonts.Monsterrat),
    );
  }
}
