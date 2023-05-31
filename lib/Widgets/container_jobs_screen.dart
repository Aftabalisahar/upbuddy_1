import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/app_fonts.dart';
import 'custom_outline_button.dart';
class ContainerJobsScreen extends StatelessWidget {
  final VoidCallback onClick;
  final VoidCallback onViewMore;
  final String title;
  final String rate;
  final String time;
  final String workLocation;
  final String description;
  final String catagory1;
  final String catagory2;
  
  const ContainerJobsScreen({Key? key, required this.onClick, required this.title, required this.rate, required this.time, required this.workLocation, required this.description, required this.catagory1, required this.catagory2, required this.onViewMore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onClick,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: Colors.grey),
            color: Colors.white
          ),
          padding: EdgeInsets.only(
            left: 14.w,
            right: 6.w,
            top: 19.h,
            bottom: 22.h
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
            style: TextStyle(
                fontFamily: AppFonts.Monsterrat,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp),
              ),
              SizedBox(height: 8.h,),
              Row(
                children: [
                  Text(rate,
                    style: TextStyle(
                        fontFamily: AppFonts.Monsterrat,
                        fontWeight: FontWeight.w300,
                        fontSize: 18.sp),
                  ),
                  Spacer(),
                  Icon(Icons.location_on_outlined,
                  size: 16.sp,
                  ),
                  Text(workLocation,
                    style: TextStyle(
                        fontFamily: AppFonts.Monsterrat,
                        fontWeight: FontWeight.w300,
                        fontSize: 11.sp),
                  ),
                  SizedBox(width: 12.w,),
                  Icon(Icons.access_time,
                    size: 16.sp,
                  ),
                  Text(' $time ago',
                    style: TextStyle(
                        fontFamily: AppFonts.Monsterrat,
                        fontWeight: FontWeight.w300,
                        fontSize: 11.sp),
                  ),
                ],
              ),
              SizedBox(height: 28.h,),
              Text(description,
                style: TextStyle(
                    fontFamily: AppFonts.Monsterrat,
                    fontWeight: FontWeight.w300,
                    fontSize: 14.sp),
              ),
              TextButton(onPressed: onViewMore, child: Text("View More",style: TextStyle(fontSize: 13.sp),)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CusOutlineButton(child: catagory1, onTap: (){}),
                  SizedBox(width: 8.w,),
                  CusOutlineButton(child: catagory2, onTap: (){}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
