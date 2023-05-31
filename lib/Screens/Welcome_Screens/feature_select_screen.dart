import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../../Utils/app_colors.dart';
import '../../../Utils/app_images.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/work_as_screen_row.dart';
import '../../Widgets/custom_row3.dart';
import 'Name_Screen/name_screen.dart';

class FeatureSelectScreen extends StatefulWidget {
  const FeatureSelectScreen({Key? key}) : super(key: key);

  @override
  State<FeatureSelectScreen> createState() => _FeatureSelectScreenState();
}

class _FeatureSelectScreenState extends State<FeatureSelectScreen> {
  int select = -1;
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    List<String> txt = [
      'AI cover letter writer',
      'Custom keywords Alerts',
      'Category Alerts',
      'All features'
    ];

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 42.h),
          child: Column(
            children: [
              const WorkAsScreenRow(
                txt: 'Which feature of UpWork do you \n want to use?',
                image: AppImages.vectorStar,
              ),
              SizedBox(
                height: 31.h,
              ),
              CustomRow3(
                          color: AppColors.customRowNormal,
                          txt: txt[0],
                          onTap: (bol) {
                            setState(() {
                              isChecked1 = bol;
                            });
                          },
                          isChecked: isChecked1,
                        ),
              SizedBox(
                height: 14.h,
              ),
              CustomRow3(
                color: AppColors.customRowNormal,
                txt: txt[1],
                onTap: (bol) {
                  setState(() {
                    isChecked2 = bol;
                  });
                },
                isChecked: isChecked2,
              ),
              SizedBox(
                height: 14.h,
              ),
              CustomRow3(
                color: AppColors.customRowNormal,
                txt: txt[2],
                onTap: (bol) {
                  setState(() {
                    isChecked3 = bol;
                  });
                },
                isChecked: isChecked3,
              ),
              SizedBox(
                height: 14.h,
              ),
              CustomRow3(
                color: AppColors.customRowNormal,
                txt: txt[3],
                onTap: (bol) {
                  setState(() {
                    isChecked = bol;
                    isChecked1 = bol;
                    isChecked2 = bol;
                    isChecked3 = bol;
                  });
                },
                isChecked: isChecked,
              ),
              SizedBox(height: 109.h),
              CustomEelvatedBtn(
                text: 'Next',
                onTap: () {
                  if(isChecked==false){
                    if(isChecked1==false){
                      if(isChecked2==false){
                        if(isChecked3==false){
                          Fluttertoast.showToast(
                              msg: "Please Select One Of The Above",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black,
                              textColor: Colors.white,
                              fontSize: 14.0.sp
                          );
                        }else
                        {
                          Get.to(() => const NameScreen());
                        }
                      }else
                      {
                        Get.to(() => const NameScreen());
                      }
                    }else
                    {
                      Get.to(() => const NameScreen());
                    }
                  }else
                    {
                      Get.to(() => const NameScreen());
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
