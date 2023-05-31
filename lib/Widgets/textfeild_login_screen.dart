import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';
import '../Utils/app_fonts.dart';


class CustTextField extends StatelessWidget {
  final TextEditingController controller;

  // final Function(String) onChanged;

  final bool obscureText;

  final TextInputType keyboardType;

  final String label;

  final int height;

  final Color txtColor;

  final Color borderColor;

  final IconData icon;

  final FormFieldValidator<String> validator;

  const CustTextField(
      {Key? key,
      required this.controller,
      required this.obscureText,
      required this.keyboardType,
      required this.label,
      required this.validator, required this.txtColor, required this.borderColor, required this.icon, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: TextFormField(
        controller: controller,
        // onChanged: onChanged,
        obscureText: obscureText,
        obscuringCharacter: '*',
        keyboardType: keyboardType,
        validator: validator,
        showCursor: true,
        style: TextStyle(fontFamily: AppFonts.Baloo, fontSize: 17.sp),
        decoration: InputDecoration(
          label: Text(label),
          prefixIcon: Icon(icon),
          labelStyle: TextStyle(color: txtColor),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide: BorderSide(
                color: borderColor,
                width: 2.sp,
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.r),
              borderSide:
                  BorderSide(width: 1.w, color: borderColor)
          ),
        ),
      ),
    );
    ;
  }
}
