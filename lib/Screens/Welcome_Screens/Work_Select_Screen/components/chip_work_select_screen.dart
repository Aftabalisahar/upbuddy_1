import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/app_colors.dart';
import '../../../../../Utils/app_fonts.dart';
class ChipWorkSelectScreen extends StatelessWidget {
  final String txt;
  final VoidCallback onDeleted;

    const ChipWorkSelectScreen({Key? key, required this.txt, required this.onDeleted}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(txt,style: TextStyle(
        color: AppColors.upAlertColor,
        fontSize: 14.sp,
        fontFamily: AppFonts.Monsterrat,
        fontWeight: FontWeight.w600,
      ),
      ),
      deleteIcon: const Icon(Icons.close),
      onDeleted: onDeleted,
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: BorderSide(
              color: AppColors.upAlertColor
          )
      ),
    );
  }
}
