import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Utils/app_colors.dart';
import 'package:upbuddy/Widgets/custom_text.dart';
class CustomRowBottomSheet extends StatelessWidget {
  final String connects ;
  final String price ;
  final Color borderColor ;
  final VoidCallback onClick ;
  const CustomRowBottomSheet({Key? key, required this.connects, required this.price, required this.borderColor, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.h),
      padding: EdgeInsets.all(8.sp),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: borderColor)
      ),
      child: Row(
        children: [
          Radio(value: 0, groupValue: 0, onChanged: (val){}),
          CustomText(txt: connects, color: Colors.black, size: 14, fontWeight: FontWeight.w500),
          Spacer(),
          CustomText(txt: price, color: Colors.black, size: 14, fontWeight: FontWeight.w600),
        ],
      ),
    );
  }
}
