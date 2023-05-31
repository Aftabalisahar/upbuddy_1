import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Utils/app_colors.dart';
import 'package:upbuddy/Utils/app_images.dart';
import 'package:upbuddy/Widgets/custom_button.dart';
import 'package:upbuddy/Widgets/custom_text.dart';
import 'package:upbuddy/Widgets/custom_textfeild.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20.w,right: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 3.h),
              const Align(
                alignment: Alignment.centerLeft,
                child:  CustomText(
                    txt: "Profile",
                    color: AppColors.upAlertColor,
                    size: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 49.h),
              SizedBox(
                height: 100.h,
                width: 100.w,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 100.r,
                      backgroundColor: Colors.black54,
                      child: CircleAvatar(
                        radius: 98.r,
                        backgroundImage: const AssetImage(AppImages.compassIcon),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                            height: 30.h,
                            child: CircleAvatar(
                                child: Icon(
                              Icons.camera_alt_outlined,
                              size: 15.sp,
                            ))))
                  ],
                ),
              ),
              SizedBox(height: 12.h),
              CustomText(
                  txt: "Aftabalisahar@gmail.com",
                  color: Colors.black,
                  size: 12.sp,
                  fontWeight: FontWeight.w500),
              SizedBox(height: 20.h),
              CustomTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  label: "Name",
                  validator: (val) {},
                  textColor: AppColors.greyTextColor,
                  borderColor: AppColors.greyTextColor,
                  height: 60,
                  maxLines: 1,
                  maxLength: 15),
              SizedBox(height: 15.h),
              CustomTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  label: "Whatsapp Number",
                  validator: (val) {},
                  textColor: AppColors.greyTextColor,
                  borderColor: AppColors.greyTextColor,
                  height: 60,
                  maxLines: 1,
                  maxLength: 15),
              SizedBox(height: 15.h),
              CustomTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  label: "Country",
                  validator: (val) {},
                  textColor: AppColors.greyTextColor,
                  borderColor: AppColors.greyTextColor,
                  height: 60,
                  maxLines: 1,
                  maxLength: 15),
              SizedBox(height: 15.h),
              CustomTextField(
                  controller: TextEditingController(),
                  obscureText: false,
                  keyboardType: TextInputType.name,
                  label: "Year Of Experience",
                  validator: (val) {},
                  textColor: AppColors.greyTextColor,
                  borderColor: AppColors.greyTextColor,
                  height: 60,
                  maxLines: 1,
                  maxLength: 15),
              SizedBox(height: 15.h),
              ListTile(
                onTap: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                tileColor: AppColors.customRowSelected,
                title: const Text("Portfolios"),
                subtitle: const Text("Tap To Add Portfolios"),
                trailing: const Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 15.h),
              ListTile(
                onTap: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
                tileColor: AppColors.greyTextColor,
                title: const Text("Certifications"),
                subtitle: const Text("Tap To Add Certification"),
                trailing: const Icon(Icons.arrow_forward),
              ),
              SizedBox(height: 36.h),
              CustomEelvatedBtn(text: "Save", onTap: (){}, color: AppColors.upAlertColor)
            ],
          ),
        ),
      ),
    );
  }
}
