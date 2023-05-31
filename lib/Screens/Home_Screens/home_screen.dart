import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:upbuddy/Screens/Home_Screens/chrome_extension_screen.dart';
import 'package:upbuddy/Widgets/custom_text.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_fonts.dart';
import '../../../Utils/app_images.dart';
import '../../../Widgets/appbar_title.dart';
import '../../../Widgets/custom_home_list.dart';
import '../../Providers/bnb_provider.dart';
import '../Auth_Screens/signin_screen_u.dart';
import 'Alerts_Screen/alerts_screen_u.dart';
import 'Jobs_Screen/jobs_screen.dart';
import 'Portfolio_Screens/portfolio_screen.dart';
import 'Proposal_Screen/proposals_screen.dart';

class HomeScreenBottomNav extends StatelessWidget {
  const HomeScreenBottomNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List screens = const [
      HomeScreen(),
      JobsScreen(),
      AlertsScreen(),
      PortfolioScreen(),
      ProposalsScreen(),
    ];
    int currentIndex = Provider.of<HomeScreenProvider>(context).currentIndex;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        backgroundColor: AppColors.upAlertColor,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(color: Colors.white,size: 30.sp,),
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 11.sp,
          fontFamily: AppFonts.Monsterrat
        ),
        onTap: (value) => Provider.of<HomeScreenProvider>(context ,listen: false).updateIndex(value)
        ,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work),label: 'Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Alerts'),
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: 'Portfolios'),
          BottomNavigationBarItem(icon: Icon(Icons.file_open),label: 'Proposals'),
        ],
      ),
      appBar:currentIndex != 2 ?  AppBar(
        backgroundColor: Colors.white,
        leading: const AppbarTitle(),
          leadingWidth: 430.w,
          elevation: 0,
      ): null,
      body: screens[currentIndex],
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.only(
          left: 25.w,
          right: 25.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 24.h,
              ),
              ListTile(
                leading: Image.asset(
                  AppImages.giftIcon,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.white,
                ),
                title: const CustomText(color: Colors.white,txt: 'Try UpAlerts 3 days for free.',fontWeight: FontWeight.w600,size: 14,),
                subtitle: const CustomText(color: Colors.white,txt: 'Tap to activate premium',fontWeight: FontWeight.w600,size: 12,),
                tileColor: AppColors.upAlertColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: 190.h,
                width: 350.w,child:  CarouselSlider(
                    items: [
                      Image.asset(AppImages.slide1, fit: BoxFit.cover),
                      Image.asset(AppImages.slide2, fit: BoxFit.cover),
                      Image.asset(AppImages.slide4, fit: BoxFit.cover),
                      Image.asset(AppImages.slide3, fit: BoxFit.cover),
                    ],
                    options: CarouselOptions(
                      // height: 190,
                      // aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    )
                )
              ),
              SizedBox(
                height: 24.h,
              ),
              const CustomText(txt: "Become a Pro Member at", color: Colors.black, size: 22, fontWeight: FontWeight.w600),
              SizedBox(
                height: 24.h,
              ),
              ListTile(
                tileColor: const Color(0xffCFDBE6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)),
                title: const CustomText(txt: "Proposals", color: Colors.black, size: 16, fontWeight: FontWeight.w600),
                trailing: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(143.w, 30.h),
                    backgroundColor: const Color(0xffCFDBE6),
                    elevation: 0,
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add_circle_outline,
                        color: AppColors.upAlertColor,
                      ),
                      CustomText(txt: " Add more", color: AppColors.upAlertColor, size: 16, fontWeight: FontWeight.w600),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              const CustomText(txt: "Tools", color: Colors.black, size: 22, fontWeight: FontWeight.w600),
              SizedBox(height: 300.h,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => CustomHomeList(
                      color: Colors.white,
                      txt: 'AI Mentor',
                      onTap: () {
                        index == 0 ? Get.to(()=> const ChromeExtensionScreen()) : Get.to(()=> const ChromeExtensionScreen());
                      },
                      path1: AppImages.giftIcon,
                      path2: Icons.arrow_forward,
                      radius: 8.r,
                      iconColor: AppColors.upAlertColor),
                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}