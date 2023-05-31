import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../Utils/app_fonts.dart';
import '../../../../../Widgets/custom_container_listview.dart';
import '../../View_Job_Screen/view_job_screen.dart';

class CatagoriesJobScreen extends StatelessWidget {
  const CatagoriesJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 28.h,
        ),
        Text(
          'Categories',
          style: TextStyle(
              color: Colors.black,
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              fontFamily: AppFonts.Baloo),
        ),
        SizedBox(
          height: 28.h,
        ),
        Container(
            margin: EdgeInsets.only(left: 20.w,right: 20.w,),
            height: 69.h,
            width: 362.w, //padding of outer Container
            child: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(12.r),
              color: Colors.black,
              //color of dotted/dash line
              strokeWidth: 1,
              //thickness of dash/dots
              dashPattern: [5, 5],
              //dash patterns, 10 is dash width, 6 is space width
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.add), Text('Add')],
                ),
              ),
            )
        ),
        SizedBox(height: 31.h,),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) =>
                  CustContainerList(
                      title: 'Android App Development',
                      onTapDelete: (){},
                      onTapViewJob: (){
                        Get.to(() => ViewJobScreen());
                      },
                      onTapAlerts: (){}
                  )
          ),
        )
      ],
    );
  }
}
