import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Screens/Home_Screens/View_More_Screens/components/cover_letter_screen.dart';
import 'package:upbuddy/Screens/Home_Screens/View_More_Screens/components/waiting_screen.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Widgets/custom_button.dart';
import '../../../../Widgets/custom_outline_button.dart';
class AIProposalTab extends StatefulWidget {
  const AIProposalTab({Key? key}) : super(key: key);

  @override
  State<AIProposalTab> createState() => _AIProposalTabState();
}

class _AIProposalTabState extends State<AIProposalTab> {
  int visible = 0 ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
            visible: visible == 1 ? true : false,
            child: const WaitingScreen()),
        Visibility(
            visible: visible == 2 ? true : false,
            child: const CoverLetterScreen()),
        Visibility(
            visible: visible == 0 ? true : false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 138.h,),
            const Text("Select Relevant Portfolio"),
            const TextField(),
            const Text("Select Certification"),
            Row(
              children: [
                const Text("No Certification"),
                TextButton(onPressed: (){}, child: const Text("Create one"))              ],
            ),
            SizedBox(height: 200.h,),
            const Text("Please select more relevant portfolios and certification to create personalized proposal.",style: TextStyle(color: Colors.black38),),
          ],
        )),
        const Spacer(),
        SizedBox(
            width: double.infinity,
            height: 50.h,
            child: visible == 1 ? null : visible == 0 ? CustomEelvatedBtn(onTap: () {
              setState(() {
                visible = 1 ;
              });
              Timer(Duration(seconds: 3), () {
                setState(() {
                  visible = 2 ;
                });
              });
            }, text: 'Create cover letter', color: AppColors.upAlertColor,)
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 170.w,
                    height: 50.h,
                    child: CustomEelvatedBtn(onTap: () {  }, text: 'Copy', color: AppColors.upAlertColor,)),
                SizedBox(
                  width: 170.w,
                  height: 50.h,
                  child: CusOutlineButton(onTap: () {  },
                    child: 'Apply on Upwork',),
                )],
            ),
        ),
      ],
    );
  }
}
