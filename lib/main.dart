import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:upbuddy/Providers/proposal_bottomsheet_provider.dart';
import 'package:upbuddy/Providers/signin_screen_provider.dart';
import 'package:upbuddy/Providers/signup_screen_provider.dart';
import 'package:upbuddy/Providers/tab_detector_provider.dart';
import 'package:upbuddy/Providers/work_as_screen_provider.dart';
import 'package:upbuddy/Screens/Home_Screens/home_screen.dart';
import 'package:upbuddy/Screens/Welcome_Screens/welcome_screen.dart';
import 'package:upbuddy/Utils/app_images.dart';

import 'Providers/badge_select_provider.dart';
import 'Providers/bnb_provider.dart';
import 'Providers/work_as_select_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 932),
      builder: (BuildContext context, Widget? child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => HomeScreenProvider()),
            ChangeNotifierProvider(create: (context) => BadgeSelectScreenProvider()),
            ChangeNotifierProvider(create: (context) => TabDetectorProvider()),
            ChangeNotifierProvider(create: (context) => WorkAsScreenProvider()),
            ChangeNotifierProvider(create: (context) => SignInScreenProvider()),
            ChangeNotifierProvider(create: (context) => SignUpScreenProvider()),
            ChangeNotifierProvider(create: (context) => WorkAsSelectProvider()),
            ChangeNotifierProvider(create: (context) => ProposalBottomSheetProvider()),
          ],
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.green,
              brightness: Brightness.light,
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              textTheme: const TextTheme(

              ),
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
            ),
            themeMode: ThemeMode.light,
            home: const WelcomeScreen(),
          ),
        );
      },

    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key,});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {Get.to(const HomeScreen());});

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      body: Column(
        children: [
          const Spacer(),
          Image.asset(AppImages.upAlert),
          const Spacer(),
          Image.asset(AppImages.loadingGif)
        ],
      ),
    );
  }
}
