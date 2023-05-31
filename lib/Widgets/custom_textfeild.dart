import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/app_fonts.dart';
import '../Utils/app_colors.dart';
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  // final Function(String) onChanged;

  final bool obscureText;

  final TextInputType keyboardType;

  final Color textColor ;

  final double height ;

  final int maxLength ;

  final int maxLines ;


  final Color borderColor ;

  final String label;

  final FormFieldValidator<String> validator;

  const CustomTextField(
      {Key? key,
      required this.controller,
      // required this.onChanged,
      required this.obscureText,
      required this.keyboardType,
      required this.label,
      required this.validator, required this.textColor, required this.borderColor, required this.height, required this.maxLines, required this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      // onChanged: onChanged,
      obscureText: obscureText,
      obscuringCharacter: '*',
      keyboardType: keyboardType,
      validator: validator,
      showCursor: true,
      style: TextStyle(fontFamily: AppFonts.Baloo, fontSize: 17.sp,height: 1.h),
      decoration: InputDecoration(
        // filled: true,
        // fillColor: AppColors.greyTextColor,
        labelText: label,
        alignLabelWithHint: false,
        labelStyle: TextStyle(color: textColor),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide: BorderSide(
              color: borderColor,
              width: 2.sp,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.r),
            borderSide:
                BorderSide(width: 2.w, color: borderColor)),
      ),
    );
  }
}
