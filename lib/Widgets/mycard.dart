import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCard extends StatelessWidget {
  final Color bgColor ;
  final double radius ;
  final double height ;
  final double width ;
  final Widget child ;
  final VoidCallback onTab;

  const MyCard({Key? key, required this.bgColor, required this.onTab, required this.child, required this.radius, required this.height, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(radius.r)
        ),
        child: child
      ),
    );
  }
}
