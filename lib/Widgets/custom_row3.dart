import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import '../Utils/app_fonts.dart';
import '../Utils/app_colors.dart';


class CustomRow3 extends StatefulWidget {
  final Color color;
  final String txt;
  final bool isChecked;
  final Function(bool) onTap;

  const CustomRow3({Key? key, required this.color, required this.txt, required this.onTap, required this.isChecked})
      : super(key: key);

  @override
  State<CustomRow3> createState() => _CustomRow3State();
}

class _CustomRow3State extends State<CustomRow3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 28.w, right: 41.68.w),
      height: 91.h,
      width: 372.w,
      decoration:
          BoxDecoration(color: widget.color, borderRadius: BorderRadius.circular(8.r)),
      child: Row(
        children: [
          Transform.scale(
              scale: 2.0.sp,
              child: Checkbox(
                  value: widget.isChecked,
                  onChanged: (onChanged) {
                    setState(() {
                      widget.onTap(
                          onChanged!);
                    });

                  },
                  shape: const CircleBorder(),
              side: BorderSide(
                  width: 2.w,
                  color: Colors.black12,
              ),
              )),
          SizedBox(
            width: 20.w,
          ),
          Text(
            widget.txt,
            style: TextStyle(
              color: AppColors.textBlack,
              fontSize: 16.sp,
              fontFamily: AppFonts.Baloo,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
