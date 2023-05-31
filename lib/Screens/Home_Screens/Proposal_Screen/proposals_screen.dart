import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:upbuddy/Providers/proposal_bottomsheet_provider.dart';
import 'package:upbuddy/Screens/Home_Screens/Proposal_Screen/components/custom_row_bottomsheet.dart';
import 'package:upbuddy/Utils/app_colors.dart';
import 'package:upbuddy/Widgets/custom_text.dart';

class ProposalsScreen extends StatefulWidget {
  const ProposalsScreen({Key? key}) : super(key: key);

  @override
  State<ProposalsScreen> createState() => _ProposalsScreenState();
}

class _ProposalsScreenState extends State<ProposalsScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.sp),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
                txt: "Proposals History",
                color: Colors.black,
                size: 16.sp,
                fontWeight: FontWeight.w700),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                  txt: "Remaining proposal : 2",
                  color: AppColors.upAlertColor,
                  size: 14.sp,
                  fontWeight: FontWeight.w700),
              TextButton(
                  onPressed: () {
                    Get.bottomSheet(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.r))),
                        Padding(
                          padding: EdgeInsets.all(22.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                  txt: "Buy AI Proposals Credit",
                                  color: Colors.black,
                                  size: 20.sp,
                                  fontWeight: FontWeight.w700),
                              Expanded(
                                child:
                                      ListView.builder(
                                      itemCount: 4,
                                      itemBuilder: (context, index) {
                                        bool isSelected = Provider.of<ProposalBottomSheetProvider>(context).index == index;
                                        return Consumer<ProposalBottomSheetProvider>(
                                          builder: (context, proposalBottomSheetProvider, child) => CustomRowBottomSheet(
                                              connects: "connects",
                                              price: "price",
                                              borderColor: isSelected ? AppColors.upAlertColor : Colors.transparent,
                                              onClick: () {
                                                proposalBottomSheetProvider.updateIndex(index);
                                              }),
                                        );
                                      }),
                                ),
                            ],
                          ),
                        ));
                  },
                  child: Text("+ Add more"))
            ],
          ),
          Spacer(),
          CustomText(
              txt: "No Proposal Generated Yet",
              color: Colors.black,
              size: 14.sp,
              fontWeight: FontWeight.w500),
          Spacer(),
        ],
      ),
    );
  }
}
