import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../../Utils/app_colors.dart';
import '../../../../Utils/app_images.dart';
import '../../../../Widgets/custom_button.dart';
import '../../../../Widgets/work_as_screen_row.dart';
import '../../Auth_Screens/SignUp_Screen/signup_screen_u.dart';
import 'components/textfield_ns.dart';
class NameScreen extends StatelessWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
        // backgroundColor: AppColors.mainColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 88.h),
            child: Column(
              children: [
                const WorkAsScreenRow(txt: 'And at lastly can i know your \n name?', image: AppImages.vectorStar,),
                SizedBox(height: 31.h,),
                Padding(
                  padding: EdgeInsets.only(left: 25.w,right: 25.w),
                  child: TxtFieldNS(controller: controller,),
                ),
                SizedBox(height: 602.h,),
                CustomEelvatedBtn(text: 'Next',
                    onTap: (){
                  if(controller.text.isEmpty){
                    Fluttertoast.showToast(
                        msg: "Please enter your name",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.black,
                        textColor: Colors.white,
                        fontSize: 14.0.sp
                    );
                  }else{
                    Get.to(() => const SignUpScreen());
                  }
                    }, color: AppColors.upAlertColor,
                ),
                SizedBox(height: 70.h,)
              ],
            ),
          ),
        )
    );
  }
}
