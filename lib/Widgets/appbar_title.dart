import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:upbuddy/Screens/Home_Screens/Profile_Screen/profile_screen.dart';
import '../Screens/Home_Screens/Settings_Screen/setting_screen.dart';
import '../Utils/app_fonts.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 19.w),
          child: Column(
            children: [
              Text(
                ' Welcome',
                style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.Baloo,
                color: Colors.black),
              ),
              Text(
                'Haroon',
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppFonts.Monsterrat,
                color: Colors.black),
              ),
            ],
          ),
        ),
        const Spacer(),
        CircleAvatar(
          backgroundColor: Colors.black12,
          child: IconButton(
            splashRadius: 23,
            tooltip: 'Profile',
            icon: const Icon(
              Icons.person_2,
              color: Colors.black,
            ),
            onPressed: () {
              Get.to(()=> const ProfileScreen());
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w),
          child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: IconButton(
                splashRadius: 23,
                tooltip: 'Setting',
                onPressed: () {
                  Get.to( () => const SettingsScreen());
                },
                icon: Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                ),
              )),
        ),
      ],
    );
  }
}
