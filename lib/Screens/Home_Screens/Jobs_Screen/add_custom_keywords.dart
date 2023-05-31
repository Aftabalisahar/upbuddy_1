import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_fonts.dart';
import '../../../../Widgets/textfeild_login_screen.dart';
import '../../../../Widgets/custom_textfeild.dart';

class AddCustomKeywords extends StatefulWidget {
  const AddCustomKeywords({Key? key}) : super(key: key);

  @override
  State<AddCustomKeywords> createState() => _AddCustomKeywordsState();
}

class _AddCustomKeywordsState extends State<AddCustomKeywords> {
  @override
  Widget build(BuildContext context) {
    String countryValue = "";
    String stateValue = "";
    String cityValue = "";
    String address = "";
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 17.w, right: 33.w, top: 13.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Custom Keywords',
                style: TextStyle(
                    fontFamily: AppFonts.Baloo,
                    fontWeight: FontWeight.w600,
                    fontSize: 22.sp,
                    color: Colors.black87),
              ),
              SizedBox(height: 23.h),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      label: 'Name',
                      validator: (value) {},
                      textColor: AppColors.upAlertColor,
                      borderColor: AppColors.customRowSelected,
                      height: 80, maxLines: 1, maxLength: 50,
                    ),
                    SizedBox(height: 35.h),
                    CustomTextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      label: 'Keywords (Comma Separated)',
                      validator: (value) {},
                      textColor: AppColors.upAlertColor,
                      borderColor: AppColors.customRowSelected,
                      height: 80, maxLines: 1, maxLength: 120,
                    ),
                    SizedBox(height: 35.h),
                    CustomTextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      keyboardType: TextInputType.name,
                      label: 'Negative Keywords (Comma Separated)',
                      validator: (value) {},
                      textColor: AppColors.upAlertColor,
                      borderColor: AppColors.customRowSelected,
                      height: 80, maxLines: 1, maxLength: 100,
                    ),
                    SizedBox(height: 49.h),
                    Text(
                      'Client Info',
                      style: TextStyle(
                          fontFamily: AppFonts.Baloo,
                          fontWeight: FontWeight.w600,
                          fontSize: 22.sp,
                          color: Colors.black87),
                    ),
                    SizedBox(height: 49.h),
                    CustTextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      label: 'Minimum Hourly Rate E.g : \$50',
                      validator: (value) {},
                      txtColor: AppColors.upAlertColor,
                      borderColor: AppColors.upAlertColor,
                      icon: Icons.monetization_on_outlined,
                      height: 80,
                    ),
                    SizedBox(height: 35.h),
                    CustTextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      label: 'Maximum Hourly Rate E.g : \$500',
                      validator: (value) {},
                      txtColor: AppColors.upAlertColor,
                      borderColor: AppColors.upAlertColor,
                      icon: Icons.monetization_on_outlined,
                      height: 80,
                    ),
                    SizedBox(height: 11.h),
                    Text(
                      'Current Location',
                      style: TextStyle(
                          fontFamily: AppFonts.Monsterrat,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Colors.black87),
                    ),
                    const CSCPicker(
                      layout: Layout.vertical,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
