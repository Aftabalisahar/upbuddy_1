import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:upbuddy/Providers/work_as_screen_provider.dart';
import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_fonts.dart';
import '../../../../Widgets/custom_button.dart';
import '../../../../Widgets/work_as_screen_row.dart';
import '../../../Utils/app_images.dart';
import '../feature_select_screen.dart';
import 'components/chip_work_select_screen.dart';
import 'components/textfield_work_select_screen.dart';

class WorkSelectScreen extends StatefulWidget {
  const WorkSelectScreen({Key? key}) : super(key: key);

  @override
  State<WorkSelectScreen> createState() => _WorkSelectScreenState();

}
class _WorkSelectScreenState extends State<WorkSelectScreen> {

@override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 88.h),
          child: Column(
            children: [
              const WorkAsScreenRow(
                txt: 'Add categories in which you work.',
                image: AppImages.vectorStar,
              ),
              SizedBox(
                height: 31.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                      // color: AppColors.customRowNormal,
                      border: Border.all(
                          width: 1, color: AppColors.upAlertLogoColor),
                      borderRadius: BorderRadius.circular(8.r)),
                  child: ExpansionTile(
                    // backgroundColor: AppColors.customRowNormal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.r)),
                    title: Consumer<WorkAsSelectProvider>(
                      builder: (context, workAsSelectProvider, child) =>
                          Text(
                            workAsSelectProvider.dropDownTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: AppFonts.Baloo,
                          fontSize: 18.sp,
                        ),
                      ),
                    ),
                    children: [
                      Consumer<WorkAsSelectProvider>(
                        builder: (context, workAsSelectProvider, child) => TextFieldWorkSelectScreen(onChanged: (val) {
                          workAsSelectProvider.onValueChanged(val);
                        }),
                      ),
                      SizedBox(
                        height: 300,
                        child: Consumer<WorkAsSelectProvider>(
                            builder: (context, workAsSelectProvider, child) =>
                                ListView.builder(
                              itemCount: workAsSelectProvider.filteredUsers.length,
                              itemBuilder: (context, index) {
                                return Center(
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        // dropDownTitle = options[index];
                                        if (!workAsSelectProvider.chipList.contains(workAsSelectProvider.options[index])) {
                                          workAsSelectProvider.chipList.add(workAsSelectProvider.options[index]);
                                        }
                                      });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.all(10.sp),
                                      child: Text(
                                        workAsSelectProvider.filteredUsers[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontFamily: AppFonts.Baloo,
                                            fontSize: 16.sp),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Consumer<WorkAsSelectProvider>(
                builder: (context, workAsSelectProvider, child) =>
                    Wrap(
                  children: List<Widget>.generate(
                    workAsSelectProvider.chipList.length,
                    (int idx) {
                      return Padding(
                        padding: EdgeInsets.only(left: 3.w,right: 3.w),
                        child: ChipWorkSelectScreen(
                          txt: workAsSelectProvider.chipList[idx],
                          onDeleted: () {
                            setState(() {
                              workAsSelectProvider.chipList.removeAt(idx);
                            });
                          },
                        ),
                      );
                    },
                  ).toList(),
                ),
              ),
              SizedBox(
                height: 109.h,
              ),
              Consumer<WorkAsSelectProvider>(
                builder: (context, workAsSelectProvider, child) => CustomEelvatedBtn(
                  text: 'Next',
                  onTap: () {
                    if (workAsSelectProvider.chipList.isEmpty) {
                      Fluttertoast.showToast(
                          msg: "Please add categories in which you work...",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 14.0.sp);
                    } else {
                      Get.to(() => const FeatureSelectScreen());
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
      ),
    ));
  }
}
