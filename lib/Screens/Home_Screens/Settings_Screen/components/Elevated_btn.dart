import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/app_fonts.dart';

class CustElevatedBtn extends StatelessWidget {
  final String txt;
  final String path;
  final VoidCallback onTap;
  const CustElevatedBtn({Key? key, required this.txt, required this.path, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w,right: 20.w,top: 8.h,bottom: 8.h),
      child: ElevatedButton(onPressed: onTap, child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(path,height: 20.h,
            width: 20.w,
            ),
            Text(txt,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFonts.Monsterrat),
            ),
          ],
        ),
      )),
    );
  }
}
