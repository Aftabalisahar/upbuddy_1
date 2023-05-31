import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_fonts.dart';
import '../../../../Widgets/mycard.dart';
import 'components/catagory_jobs_screen.dart';
import 'components/keyword_jobs_screen.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 25.w,
          right: 25.w,
          top: 24.h
        ),
        child: Column(
          children: [
            MyCard(
              bgColor: AppColors.upAlertColor,
              onTab: () {},
              radius: 10.r,
              height: 40,
              width: 368.w,
              child: TabBar(
                labelColor: Colors.black,
                labelStyle: TextStyle(
                    fontFamily: AppFonts.Monsterrat,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
                indicator: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(10.r)),
                controller: tabController,
                tabs: [
                  const Text('Keyword Jobs'),
                  const Text('Catagory Jobs'),
                ],
              ),
            ),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: const [
                KeyWordScreen(),
                CatagoriesJobScreen()
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}
