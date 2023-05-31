import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Utils/app_fonts.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onClick;
  const ListItem({Key? key, required this.title, required this.subtitle, required this.icon, required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onClick,
      title: Text(title,
        style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
            fontFamily: AppFonts.Monsterrat),
      ),
      subtitle: subtitle == '' ? null : Text(subtitle,
        style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w400,
            fontFamily: AppFonts.Monsterrat),
      ),
      trailing: Icon(icon,size: 20.sp,),
    );
  }
}
