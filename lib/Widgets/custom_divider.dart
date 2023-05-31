import 'package:flutter/material.dart';

import '../Utils/app_colors.dart';
class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 1,width: 95,color: AppColors.greyTextColor,);
  }
}
