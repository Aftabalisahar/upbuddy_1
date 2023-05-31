import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_fonts.dart';
import '../../../../Widgets/mycard.dart';
import 'components/catagory_jobs_tab.dart';
import 'components/keywords_jobs_tab.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({Key? key}) : super(key: key);

  @override
  State<AlertsScreen> createState() => _AlertsScreenState();
}

class _AlertsScreenState extends State<AlertsScreen> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 38.h
          ),
          child: Column(
            children: [
              MyCard(
                bgColor: AppColors.upAlertColor,
                onTab: () {},
                radius: 10,
                height: 40,
                width: 368,
                child: TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(
                      fontFamily: AppFonts.Monsterrat,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                  indicator: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10)),
                  controller: tabController,
                  tabs: [
                    Text('Keyword Jobs'),
                    Text('Catagory Jobs'),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: const [
                      KeywordsTab(),
                      CategoryTab()
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
