import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:upbuddy/Providers/signin_screen_provider.dart';

import '../../../Utils/app_colors.dart';
import '../../../Utils/app_fonts.dart';
import '../../../Utils/app_images.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/custom_checkbox.dart';
import '../../../Widgets/custom_circle_avator.dart';
import '../../../Widgets/custom_divider.dart';
import '../../../Widgets/custom_textfeild.dart';
import '../Home_Screens/home_screen.dart';
import 'SignUp_Screen/signup_screen_u.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
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
                    'Sign In',
                    style: TextStyle(
                      fontFamily: AppFonts.Baloo,
                      fontWeight: FontWeight.w400,
                      fontSize: 33.sp,
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(left: 50.w, right: 129.w),
                child: Column(
                  children: [
                    Text('Welcome to UpWork! Please sign in to continue.',
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
                        Text("Don't have an account?  ",
                            style: TextStyle(
                              fontFamily: AppFonts.Monsterrat,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                            )),
                        InkWell(
                          onTap: () {
                            Get.to(() => const SignUpScreen());
                          },
                          child: Text('Register',
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
                    Consumer<SignInScreenProvider>(
                      builder: (context, signInScreenProvider, child) => CustomTextField(
                        controller: signInScreenProvider.emailController,
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
                    Consumer<SignInScreenProvider>(
                      builder: (context, signInScreenProvider, child) => CustomTextField(
                        controller: signInScreenProvider.passwordController,
                        // onChanged: (p0) =>,
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        label: 'Enter Your Password',
                        validator: (value) {},
                        textColor: AppColors.upAlertColor,
                        borderColor: AppColors.customRowSelected, height: 80, maxLines: 1, maxLength: 8,
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     Expanded(child: Container()),
                    //     Text('Forget Password ?',
                    //         style: TextStyle(
                    //             fontFamily: AppFonts.Monsterrat,
                    //             fontWeight: FontWeight.w400,
                    //             fontSize: 12.sp,
                    //             color: Colors.black87
                    //         )
                    //     )
                    //   ],
                    // ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Consumer<SignInScreenProvider>(
                      builder: (context, signInScreenProvider, child) =>
                      CustomCheckBox(
                        onTap: (bol) {
                          signInScreenProvider.updateLocation(bol);
                        },
                        txt: 'Enable GPS location service',
                        checkboxCheckedColor: AppColors.upAlertColor,
                        isChecked: signInScreenProvider.location,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Consumer<SignInScreenProvider>(
                      builder: (context, signInScreenProvider, child) =>
                          CustomCheckBox(
                        onTap: (bol) {
                          signInScreenProvider.updateNotification(bol);
                        },
                        txt: 'Enable push notification',
                        checkboxCheckedColor: AppColors.upAlertColor,
                        isChecked: signInScreenProvider.notification,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                Consumer<SignInScreenProvider>(
                  builder: (context, signInScreenProvider, child) =>
                      CustomCheckBox(
                      onTap: (bol) {
                        signInScreenProvider.updateCamera(bol);
                      },
                      txt: 'Enable camera',
                      checkboxCheckedColor: AppColors.upAlertColor,
                      isChecked: signInScreenProvider.camera,
                    )),
                    SizedBox(
                      height: 42.h,
                    ),
                    Consumer<SignInScreenProvider>(
                      builder: (context, signInScreenProvider, child) => CustomEelvatedBtn(
                        text: 'Login',
                        onTap: () {
                          if (signInScreenProvider.emailController.text.isEmpty) {
                            Fluttertoast.showToast(
                                msg: "Please enter your email...",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fontSize: 14.0.sp);
                          } else {
                            if (signInScreenProvider.passwordController.text.isEmpty) {
                              Fluttertoast.showToast(
                                  msg: "Please enter your password...",
                                  toastLength: Toast.LENGTH_SHORT,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 1,
                                  backgroundColor: Colors.black,
                                  textColor: Colors.white,
                                  fontSize: 14.0.sp);
                            } else {
                                if (signInScreenProvider.location == false) {
                                  Fluttertoast.showToast(
                                      msg: "Please enable location services...",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor: Colors.black,
                                      textColor: Colors.white,
                                      fontSize: 14.0.sp);
                                } else {
                                  if (signInScreenProvider.notification == false) {
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
                                    if (signInScreenProvider.camera == false) {
                                      Fluttertoast.showToast(
                                          msg: "Please give camera access...",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Colors.black,
                                          textColor: Colors.white,
                                          fontSize: 14.0.sp);
                                    } else {
                                      Get.to(() => const HomeScreenBottomNav());
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
    ]));
  }
}
