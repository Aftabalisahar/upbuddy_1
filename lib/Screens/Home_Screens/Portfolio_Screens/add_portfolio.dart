import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Widgets/custom_button.dart';

import '../../../Utils/app_colors.dart';
import '../../../Utils/app_fonts.dart';
import '../../../Widgets/custom_textfeild.dart';
class AddPortfolio extends StatelessWidget {
  const AddPortfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: const BackButton(color: Colors.black),
      ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Add Portfolio",
                style: TextStyle(
                fontFamily: AppFonts.Monsterrat,
                fontWeight: FontWeight.w600,
                fontSize: 22.sp),),
                SizedBox(height: 23.h,),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        label: 'Title',
                        validator: (value) {},
                        textColor: Colors.black26,
                        borderColor: Colors.black38,height: 80, maxLines: 1, maxLength: 40,
                      ),
                      SizedBox(height: 35.h),
                      CustomTextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        label: 'Add portfolio link',
                        validator: (value) {},
                        textColor: Colors.black26,
                        borderColor: Colors.black38,height: 80, maxLines: 1, maxLength: 80,
                      ),
                      SizedBox(height: 35.h),
                      CustomTextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        label: 'Short description',
                        validator: (value) {},
                        textColor: Colors.black26,
                        borderColor: Colors.black38,height: 160, maxLines: 3, maxLength: 150,
                      ),
                      SizedBox(height: 35.h),
                      CustomTextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        label: 'Video link',
                        validator: (value) {},
                        textColor: Colors.black26,
                        borderColor: Colors.black38,height: 80, maxLines: 1, maxLength: 80
                      ),
                      SizedBox(height: 35.h),
                      CustomTextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        label: 'Category',
                        validator: (value) {},
                        textColor: Colors.black26,
                        borderColor: Colors.black38,height: 80, maxLines: 1, maxLength: 80,
                      ),
                      SizedBox(height: 35.h),
                      CustomTextField(
                        controller: TextEditingController(),
                        obscureText: false,
                        keyboardType: TextInputType.name,
                        label: 'Skill',
                        validator: (value) {},
                        textColor: Colors.black26,
                        borderColor: Colors.black38,height: 80, maxLines: 1, maxLength: 80,
                      ),
                      SizedBox(height: 49.h),
                      CustomEelvatedBtn(text: 'SAVE', onTap: () {  }, color: AppColors.upAlertColor,),
                      SizedBox(height: 49.h),
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
