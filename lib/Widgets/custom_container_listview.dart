import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Utils/app_colors.dart';
import '../Utils/app_fonts.dart';

class CustContainerList extends StatelessWidget {
  final String title;
  final VoidCallback onTapDelete;
  final VoidCallback onTapViewJob;
  final VoidCallback onTapAlerts;

  const CustContainerList(
      {Key? key,
      required this.title,
      required this.onTapDelete,
      required this.onTapViewJob,
      required this.onTapAlerts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:EdgeInsets.only(bottom: 17.sp),
      child: Container(
        height: 154.h,
        width: 380.w,
        padding: EdgeInsets.only(left: 6.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.greyTextColor)
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(title, style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.Monsterrat,
                    fontSize: 15.sp
                ),),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.delete_forever_outlined,size: 17.sp,),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              children: [
                Spacer(),
                TextButton(
                    onPressed: onTapAlerts,
                    child: Text(
                      'Enable Alerts',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.Monsterrat,
                        fontSize: 13.sp
                      ),
                    )
                ),
                TextButton(
                    onPressed: onTapViewJob,
                    child: Text('View Jobs',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: AppFonts.Monsterrat,
                          fontSize: 13.sp
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
