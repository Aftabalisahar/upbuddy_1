import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upbuddy/Screens/Home_Screens/View_More_Screens/components/view_more_job_container.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Widgets/custom_button.dart';
import '../../../../Widgets/custom_outline_button.dart';

class JobDetailsTab extends StatelessWidget {
  const JobDetailsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40.h,),
        const VMJobContainer(
            rate: "\$234",
            time: "1 hour",
            description: "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria."
                "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria."
                "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria."
                "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria."
                "You can enter keywords matching your skills, specify minimum price and country to get job targeted job alerts matching your criteria.",
            workLocation: "New York",
            title: "I need app publisher on google play store - Upwork"),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 170.w,
                height: 50.h,
                child: CustomEelvatedBtn(onTap: () {  }, text: 'Write AI Proposal', color: AppColors.upAlertColor,)),
            SizedBox(
              width: 170.w,
              height: 50.h,
              child: CusOutlineButton(onTap: () {  },
                child: 'Apply on Upwork',),
            )],
        ),
      ],
    );
  }
}
