import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:upbuddy/Providers/work_as_screen_provider.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_images.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/work_as_screen_row.dart';
import '../../../Widgets/custom_row2.dart';
import '../../Providers/work_as_select_provider.dart';
import 'badge_select_screen.dart';

class WorkAsSelection extends StatefulWidget {
  const WorkAsSelection({Key? key}) : super(key: key);

  @override
  State<WorkAsSelection> createState() => _WorkAsSelectionState();
}

class _WorkAsSelectionState extends State<WorkAsSelection> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 42.h),
        child: Column(
          children: [
            const WorkAsScreenRow(
              txt: 'Do you work as Agency or as \n Individual freelancer?',
              image: AppImages.vectorStar,
            ),
            SizedBox(
              height: 31.h,
            ),
            Consumer<WorkAsScreenProvider>(builder: (context, workAsSelectionProvider, child) =>
               CustomRow2(
                color: workAsSelectionProvider.agencySelection
                    ? AppColors.customRowSelected
                    : AppColors.customRowNormal,
                txt: 'Agency',
                onTap: () {
                  workAsSelectionProvider.updateAgency();
                  },
                img: AppImages.vectorArrow,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Consumer<WorkAsScreenProvider>(builder: (context, workAsSelectionProvider, child) =>
                CustomRow2(
                color: workAsSelectionProvider.individualSelection
                    ? AppColors.customRowSelected
                    : AppColors.customRowNormal,
                txt: 'Individual Freelancer',
                onTap: () {
                  workAsSelectionProvider.updateIndividual();
                  },
                img: AppImages.vectorArrow,
              ),
            ),
            Expanded(child: Container()),
        Consumer<WorkAsScreenProvider>(builder: (context, workAsSelectionProvider, child) =>
            CustomEelvatedBtn(
                text: 'Next',
                onTap: () {
                  if(workAsSelectionProvider.agencySelection == false && workAsSelectionProvider.individualSelection == false){
                    Fluttertoast.showToast(
                        msg: "Please Select One Of The Above",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 14.0.sp
                   );
                  }else {
                    Get.to(() => const SelectBadgeScreen());
                  }
                  },
                color: AppColors.upAlertColor,
              ),
            ),
            SizedBox(
              height: 70.h,
            )
          ],
        ),
      ),
    ));
  }
}
