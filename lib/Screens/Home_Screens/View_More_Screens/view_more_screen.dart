import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Screens/Home_Screens/View_More_Screens/components/ai_proposal_tab.dart';
import 'package:upbuddy/Screens/Home_Screens/View_More_Screens/components/job_details_tab.dart';

import '../../../Utils/app_fonts.dart';
class ViewMoreScreen extends StatefulWidget {
  const ViewMoreScreen({Key? key}) : super(key: key);

  @override
  State<ViewMoreScreen> createState() => _ViewMoreScreenState();
}

class _ViewMoreScreenState extends State<ViewMoreScreen> with TickerProviderStateMixin{
      @override
  Widget build(BuildContext context) {
        TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: IconButton(icon:const Icon(Icons.share),splashRadius: 35.r,onPressed: (){}),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 40.h,left: 20.w,right: 20.w),
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              labelStyle: TextStyle(
                  fontFamily: AppFonts.Monsterrat,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700),
              controller: tabController,
              tabs:  const [
                Text('Job Details'),
                Text('AI Proposals'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: const [
                  JobDetailsTab(),
                  AIProposalTab()
                ],
              ),
            ),
            SizedBox(height: 10.h,)
          ],
        ),
      ),
    );
  }
}
