import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_fonts.dart';
import '../../../../Utils/app_images.dart';
import '../../../../Widgets/custom_button.dart';
import '../../../../Widgets/custom_checkbox.dart';
import '../../../../Widgets/custom_circle_avator.dart';
import '../../../../Widgets/custom_divider.dart';
import '../../../../Widgets/custom_textfeild.dart';
import '../../../Providers/signup_screen_provider.dart';
import '../signin_screen_u.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool location = false;

  bool notification = false;

  bool camera = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        Image.asset(AppImages.circleGroup),
        SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 76.51.w, left: 50.w),
                  child: Image.asset(AppImages.upWorkRounded),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 50.w),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: AppFonts.Baloo,
                        fontWeight: FontWeight.w400,
                        fontSize: 33.sp,
                      ),
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 50.w, right: 59.w),
                  child: Column(
                    children: [
                      Text(
                          'Welcome to UpWork! Please create an account to continue.',
                          style: TextStyle(
                            fontFamily: AppFonts.Monsterrat,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                          )),
                      SizedBox(
                        height: 9.h,
                      ),
                      Row(
                        children: [
                          Text("Already have an account?  ",
                              style: TextStyle(
                                fontFamily: AppFonts.Monsterrat,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              )),
                          InkWell(
                            onTap: () {
                              Get.to(() => const SignInScreen());
                            },
                            child: Text('Login',
                                style: TextStyle(
                                    fontFamily: AppFonts.Monsterrat,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: AppColors.upAlertColor)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 16.h,
                      ),
                      Consumer<SignUpScreenProvider>(
                        builder: (context, signUpScreenProvider, child) => CustomTextField(
                          controller: signUpScreenProvider.emailController,
                          // onChanged: (p0) =>,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          label: 'Enter Your Email',
                          validator: (value) {},
                          textColor: AppColors.upAlertColor,
                          borderColor: AppColors.customRowSelected, height: 80, maxLines: 1, maxLength: 20,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Consumer<SignUpScreenProvider>(
                        builder: (context, signUpScreenProvider, child) => CustomTextField(
                          controller: passwordController,
                          // onChanged: (p0) =>,
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          label: 'Enter Your Password',
                          validator: (value) {},
                          textColor: AppColors.upAlertColor,
                          borderColor: AppColors.customRowSelected, height: 80, maxLines: 1, maxLength: 8,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Consumer<SignUpScreenProvider>(
                        builder: (context, signUpScreenProvider, child) => CustomTextField(
                          controller: signUpScreenProvider.confirmPasswordController,
                          // onChanged: (p0) =>,
                          obscureText: true,
                          keyboardType: TextInputType.emailAddress,
                          label: 'Confirm Your Password',
                          validator: (value) {},
                          textColor: AppColors.upAlertColor,
                          borderColor: AppColors.customRowSelected, height: 80, maxLines: 1, maxLength: 8,
                        ),
                      ),
                      SizedBox(
                        height: 33.h,
                      ),
                      Consumer<SignUpScreenProvider>(
                        builder: (context, signUpScreenProvider, child) => CustomCheckBox(
                          onTap: (bol) {
                            signUpScreenProvider.updateLocation(bol);
                          },
                          txt: 'Enable GPS location service',
                          checkboxCheckedColor: AppColors.upAlertColor,
                          isChecked: signUpScreenProvider.location,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Consumer<SignUpScreenProvider>(
                        builder: (context, signUpScreenProvider, child) => CustomCheckBox(
                          onTap: (bol) {
                            signUpScreenProvider.updateNotification(bol);
                          },
                          txt: 'Enable push notification',
                          checkboxCheckedColor: AppColors.upAlertColor,
                          isChecked: signUpScreenProvider.notification,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Consumer<SignUpScreenProvider>(
                        builder: (context, signUpScreenProvider, child) => CustomCheckBox(
                          onTap: (bol) {
                            signUpScreenProvider.updateCamera(bol);
                          },
                          txt: 'Enable camera',
                          checkboxCheckedColor: AppColors.upAlertColor,
                          isChecked: signUpScreenProvider.camera,
                        ),
                      ),
                      SizedBox(
                        height: 42.h,
                      ),
                      Consumer<SignUpScreenProvider>(
                        builder: (context, signUpScreenProvider, child) => CustomEelvatedBtn(
                          text: 'Register',
                          onTap: () {
                            if (signUpScreenProvider.emailController.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Please enter your email...",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.black,
                                  textColor: Colors.white,
                                  fontSize: 14.0.sp);
                            } else {
                              if (signUpScreenProvider.passwordController.text.isEmpty) {
                                Fluttertoast.showToast(
                                    msg: "Please enter your password...",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.black,
                                    textColor: Colors.white,
                                    fontSize: 14.0.sp);
                              } else {
                                if (signUpScreenProvider.confirmPasswordController.text.isEmpty) {
                                  Fluttertoast.showToast(
                                      msg: "Please confirm your password...",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.black,
                                      textColor: Colors.white,
                                      fontSize: 14.0.sp);
                                } else {
                                  if (signUpScreenProvider.location == false) {
                                    Fluttertoast.showToast(
                                        msg: "Please enable location services...",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor: Colors.black,
                                        textColor: Colors.white,
                                        fontSize: 14.0.sp);
                                  } else {
                                    if (signUpScreenProvider.notification == false) {
                                      Fluttertoast.showToast(
                                          msg:
                                              "Please enable notification services...",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.black,
                                          textColor: Colors.white,
                                          fontSize: 14.0.sp);
                                    } else {
                                      if (signUpScreenProvider.camera == false) {
                                        Fluttertoast.showToast(
                                            msg: "Please give camera access...",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.BOTTOM,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor: Colors.black,
                                            textColor: Colors.white,
                                            fontSize: 14.0.sp);
                                      } else {
                                        Get.to(() => const SignInScreen());
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          },
                          color: AppColors.upAlertColor,
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CustomDivider(),
                          Text('Or sign in with',
                              style: TextStyle(
                                  fontFamily: AppFonts.Monsterrat,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp,
                                  color: AppColors.greyTextColor)),
                          CustomDivider(),
                        ],
                      ),
                      SizedBox(
                        height: 28.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MyCircleAvator(
                              isImage: true,
                              image1: AppImages.googleLogo,
                              icon: Icons.phone,
                              onTap: () {}),
                          MyCircleAvator(
                              isImage: false,
                              image1: AppImages.googleLogo,
                              icon: Icons.phone,
                              onTap: () {})
                        ],
                      ),
                      SizedBox(
                        height: 38.h,
                      ),
                    ],
                  ),
                ),
              ]),
        )
      ]),
    ));
  }
}
