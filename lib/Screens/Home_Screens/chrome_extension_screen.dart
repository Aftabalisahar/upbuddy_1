import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:upbuddy/Screens/Home_Screens/Settings_Screen/components/Elevated_btn.dart';
import 'package:upbuddy/Utils/app_fonts.dart';
import 'package:upbuddy/Utils/app_images.dart';
class ChromeExtensionScreen extends StatelessWidget {
  const ChromeExtensionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h,left: 10.w,right: 10.w),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(children: [
            IconButton(icon: const Icon(Icons.arrow_back_outlined),onPressed: (){
              Get.back();
            },),
            Text("Chrome extension is coming\nsoon",style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w600,
              fontFamily: AppFonts.Monsterrat
            ),),
            ],),
            SizedBox(height: 100.h,),
            Image.asset(AppImages.comingSoon),
            SizedBox(height: 107.h,),
            CustElevatedBtn(
              txt: 'Join WhatsApp Community',
              path: AppImages.whatsAppIcon,
              onTap: () {},
            ),
          ],),
        ),
      ),
    );
  }
}
