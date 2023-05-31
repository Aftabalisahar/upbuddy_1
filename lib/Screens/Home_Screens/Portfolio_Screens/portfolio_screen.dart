import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:upbuddy/Utils/app_fonts.dart';
import 'package:upbuddy/Widgets/textfeild_login_screen.dart';

import 'add_portfolio.dart';
import 'compnents/p_cust_container.dart';

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustTextField(
                controller: TextEditingController(),
                obscureText: false,
                keyboardType: TextInputType.text,
                label: "Search here",
                validator: (validator) {},
                txtColor: Colors.black26,
                borderColor: Colors.black26,
                icon: Icons.search, height: 50,),
            Padding(
              padding: EdgeInsets.only(
                top: 22.h,
                bottom: 64.h,
              ),
              child: Row(
                children: [
                  Text(
                    "My Portfolios",
                    style: TextStyle(
                        fontFamily: AppFonts.Monsterrat,
                        fontWeight: FontWeight.w600,
                        fontSize: 22.sp),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Get.to(()=> const AddPortfolio());
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: Row(
                          children: const [Icon(Icons.add), Text("Add new")],
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
                height: 500.h,
                child: ListView.builder(

                  itemBuilder: (context, index) => const PContainer(),)),

          ],
        ),
      ),
    );
  }
}
