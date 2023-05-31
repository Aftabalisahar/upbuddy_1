import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

import '../Utils/app_colors.dart';
import '../Utils/app_fonts.dart';

class CustomCheckBox extends StatelessWidget {
  final Function(bool) onTap;

  final String txt;
  final bool isChecked;

  final Color checkboxCheckedColor;

  const CustomCheckBox({Key? key,
    required this.onTap,
    required this.txt,
    required this.checkboxCheckedColor, required this.isChecked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundCheckBox(
          onTap: (bol) {
            onTap(bol!);
          },
          isChecked: isChecked,
          border: Border.all(
            width: 2.w,
            color: Colors.black12,
          ),
          size: 35.sp,
          uncheckedColor: AppColors.checkboxColor,
          checkedColor: checkboxCheckedColor,
          // uncheckedWidget: Icon(Icons.close, color: Colors.white),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(txt,
            style: TextStyle(
              color: AppColors.customCheckboxText,
              fontSize: 14.sp,
              fontFamily: AppFonts.Baloo,
              fontWeight: FontWeight.w400,
            ))
      ],
    );
  }
}
