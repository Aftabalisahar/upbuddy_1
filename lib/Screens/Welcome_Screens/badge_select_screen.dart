import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../Utils/app_colors.dart';
import '../../../Utils/app_images.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/work_as_screen_row.dart';
import '../../../Widgets/custom_row2.dart';
import '../../Providers/badge_select_provider.dart';
import 'Work_Select_Screen/work_select_screen.dart';

class SelectBadgeScreen extends StatelessWidget {
  const SelectBadgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int select = Provider.of<BadgeSelectScreenProvider>(context).currentIndex ;
    List<String> txt = [
      'Expert Vetted',
          'Top Rated Plus',
          'Top Rated',
          'Rising Talent',
          "I'm a new freelancer on upwork"
    ];
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 42.h),
          child: Column(
            children: [
              const WorkAsScreenRow(
                txt: 'That’s nice, which badge do you \n have on Upwork?',
                image: AppImages.vectorStar,
              ),
              SizedBox(
                height: 31.h,
              ),
              SizedBox(
                height: 550.h,
                child: ListView.builder(
                  itemCount: txt.length,
                  itemBuilder: (context, index) {
                    bool isSelected = (index==select);
                   return Column(
                      children: [
                        CustomRow2(
                          color: isSelected
                              ? AppColors.customRowSelected
                              : AppColors.customRowNormal,
                          txt: txt[index],
                          onTap: () {
                            Provider.of<BadgeSelectScreenProvider>(context,
                                listen: false)
                                .updateIndex(index);
                          },
                          img: AppImages.vectorArrow,
                        ),
                        SizedBox(
                          height: 20.h,
                        )
                      ],
                    );
                  }),
              ),
              SizedBox(
                height: 109.h,
              ),
              CustomEelvatedBtn(
                text: 'Next',
                onTap: () {
                  if(select==-1){
                    Fluttertoast.showToast(
                        msg: "Please Select One Of The Above",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 14.0.sp
                    );
                  }else{
                  Get.to(() => const WorkSelectScreen());
                  }
                },
                color: AppColors.upAlertColor,
              ),
              SizedBox(
                height: 70.h,
              )
            ],
          ),
        ),
      ),
    ));
  }
}
