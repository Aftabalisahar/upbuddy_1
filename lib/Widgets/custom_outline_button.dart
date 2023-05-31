import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';
import '../Utils/app_fonts.dart';

class CusOutlineButton extends StatelessWidget {
  final String child;
  final VoidCallback onTap;
  const CusOutlineButton({Key? key, required this.child, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onTap,
      style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppColors.upAlertColor,style: BorderStyle.solid,width: 1.0.w,strokeAlign: BorderSide.strokeAlignInside)
      ), child: Text(child,style: TextStyle(fontFamily: AppFonts.Baloo,fontSize: 12.sp,fontWeight: FontWeight.w900),),
    );
  }
}
