import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:upbuddy/Screens/Welcome_Screens/work_as_screen.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_fonts.dart';
import '../../../Utils/app_images.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/welcome_screen_row.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(AppImages.circleGroup),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: 118.h, left: 43.w, bottom: 13.h),
                    child: Image.asset(AppImages.upWorkRounded),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 43.w, right: 44.w, bottom: 131.h),
                    child: Text(
                      'Welcome To UpWork',
                      style: TextStyle(
                        fontFamily: AppFonts.Baloo,
                        fontWeight: FontWeight.w400,
                        fontSize: 33.sp,
                      ),
                    ),
                  ),
                  const WelcomeScreenRow(
                    text: 'Al Write',
                    text2:
                        'Write personalized cover letters according to the job post in seconds.',
                    image: AppImages.tickImageGreen,
                  ),
                  const WelcomeScreenRow(
                    text: 'Free Category',
                    text2: 'Get Unlimited job alerts for 64 Upwork categories.',
                    image: AppImages.tickImageGreen,
                  ),
                  const WelcomeScreenRow(
                    text: 'Keyword Alerts',
                    text2:
                        'Get notified whenever new jobs are posted on Upwork matching your criteria.',
                    image: AppImages.tickImageGreen,
                  ),
                  const WelcomeScreenRow(
                    text: 'WhatsApp Integration',
                    text2:
                        'Link your WhatsApp number to get custom Keyword job alerts directly on WhatsApp.',
                    image: AppImages.tickImageGreen,
                  ),
                  SizedBox(
                    height: 56.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 25.w),
                    child: CustomEelvatedBtn(
                      text: "Let's Start",
                      onTap: () {
                        Get.to(() => const WorkAsSelection());
                      },
                      color: AppColors.upAlertColor,
                    ),
                  ),
                  SizedBox(
                    height: 76.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
