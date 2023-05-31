import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Utils/app_images.dart';
import 'components/Elevated_btn.dart';
import 'components/items.dart';
import 'components/page_title.dart';
import 'package:provider/provider.dart';
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: 15.w, right: 284.w, top: 54.h, bottom: 23.h),
            child: const PageTitle(
              txt: 'Settings',
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListItem(
                  title: 'Theme',
                  subtitle: 'Light',
                  icon: Icons.wb_sunny,
                  onClick: () {

                  },
                ),
                Divider(thickness: 1.sp),
                ListItem(
                  title: 'Notifications',
                  subtitle: '',
                  icon: Icons.notifications,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                ListItem(
                  title: 'WhatsApp Notifications',
                  subtitle: '',
                  icon: Icons.doorbell_outlined,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                SizedBox(height: 33.h),
                const PageTitle(txt: '   Account'),
                ListItem(
                  title: 'Sign Out',
                  subtitle: '',
                  icon: Icons.logout,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                ListItem(
                  title: 'Restore Purchases',
                  subtitle: '',
                  icon: Icons.restore,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                ListItem(
                  title: 'Cancel Subscription',
                  subtitle: '',
                  icon: Icons.cancel_outlined,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                ListItem(
                  title: 'Delete Account',
                  subtitle: '',
                  icon: Icons.person_remove_alt_1_rounded,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                SizedBox(height: 33.h),
                const PageTitle(txt: '   Link Accounts'),
                ListItem(
                  title: 'Google',
                  subtitle: 'Linked',
                  icon: Icons.delete_forever_outlined,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                ListItem(
                  title: 'Facebook',
                  subtitle: 'Not Linked',
                  icon: Icons.link,
                  onClick: () {},
                ),
                Divider(thickness: 1.sp),
                SizedBox(height: 33.h),
                const PageTitle(txt: '   Connect'),
                CustElevatedBtn(
                  txt: 'Join WhatsApp Community',
                  path: AppImages.whatsAppIcon,
                  onTap: () {},
                ),
                CustElevatedBtn(
                  txt: 'UpAlerts Facebook Page',
                  path: AppImages.facebookIcon,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
