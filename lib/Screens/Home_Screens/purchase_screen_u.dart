import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_fonts.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/welcome_screen_row.dart';
import '../../Utils/app_images.dart';
import 'home_screen.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  right: 32.31.w, top: 71.h, left: 379.w, bottom: 82.h),
              child: InkWell(
                onTap: () {
                  Get.to(() => HomeScreenBottomNav());
                },
                child: Icon(Icons.close),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 25.w, right: 112.w, bottom: 46.48.w),
              child: Column(
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Become a Pro Member at',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                              fontFamily: AppFonts.Monsterrat),
                          children: [
                        TextSpan(text: '\nRs 995.00'),
                        TextSpan(
                          text: ' Per Month',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFonts.Monsterrat),
                        ),
                      ])),
                ],
              ),
            ),
            Column(
              children: [
                const WelcomeScreenRow(
                  text: 'Unlimited Job Alerts',
                  text2: '',
                  image: AppImages.tickImageGreen,
                ),
                const WelcomeScreenRow(
                  text: 'Custom Keyword Alerts',
                  text2:
                      'You can enter keywords matching your skills specify minimum price and country to get job targeted job alerts matching your criteria.',
                  image: AppImages.tickImageGreen,
                ),
                const WelcomeScreenRow(
                  text: 'Custom Keyword Alerts',
                  text2:
                      'Get job notification on your WhatsApp number.Helpful for those who want to get alerts on Laptop/Desktop.',
                  image: AppImages.tickImageGreen,
                ),
                const WelcomeScreenRow(
                  text: '5 Al Proposals',
                  text2: '',
                  image: AppImages.tickImageGreen,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 100.h, bottom: 18.h),
                  child: CustomEelvatedBtn(
                    text: 'Start 3 Days FREE Trial',
                    onTap: () {},
                    color: AppColors.upAlertColor,
                  ),
                ),
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                        fixedSize: Size(380.w, 55.h),
                        side: BorderSide(
                            color: AppColors.upAlertColor, width: 1.w)),
                    child: Text(
                      'Restore purchase',
                      style: TextStyle(
                          fontFamily: AppFonts.Monsterrat,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp),
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    top: 39.h,
                    bottom: 18.h,
                  ),
                  child: RichText(
                      text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: AppFonts.Monsterrat),
                    text: '*Rs 995.00/',
                    children: [
                      TextSpan(
                        text: 'month after the trial',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.Monsterrat),
                      ),
                      TextSpan(text: ' Cancel anytime'),
                    ],
                  )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 48.h,
                  ),
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: AppFonts.Monsterrat),
                        text: 'By continuing you agree to our terms ,\n',
                        children: [
                          TextSpan(
                            text: 'Conditions',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppFonts.Monsterrat),
                          ),
                          TextSpan(
                            text: ' and',
                          ),
                          TextSpan(
                            text: ' privacy policy.',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: AppFonts.Monsterrat),
                          ),
                        ],
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
