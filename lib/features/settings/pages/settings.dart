import 'package:fad/common/styling.dart';
import 'package:fad/common/widgets/back_icon.dart';
import 'package:fad/features/miscellaneous/pages/rewards.dart';
import 'package:fad/features/premium/premium.dart';
import 'package:fad/features/settings/widgets/setting_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notifSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const BackIcon(),
        centerTitle: true,
        title: Text('Settings', style: TextStyles.title),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          Text(
            'Account Settings',
            style: TextStyles.subTitleBold,
          ),
          Gap(10.h),
          SettingWidget(title: 'Change Password', fun: () {}),
          SettingWidget(
            title: 'Tiers and Rewards',
            fun: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const RewardsPage(),
                ),
              );
            },
          ),
          SettingWidget(title: 'Analytics', fun: () {}),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Row(
              children: [
                Text(
                  'Notifications',
                  style: TextStyles.descp,
                ),
                const Spacer(),
                CupertinoSwitch(
                  value: notifSwitch,
                  onChanged: (value) {
                    notifSwitch = value;
                    setState(() {});
                  },
                  activeColor: appPink,
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey, thickness: 2.h),
          Gap(20.h),
          Text(
            'More Settings',
            style: TextStyles.subTitleBold,
          ),
          Gap(10.h),
          SettingWidget(
              title: 'Upgrade to premium',
              fun: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PremiumIntro(),
                  ),
                );
              }),
          SettingWidget(title: 'About us', fun: () {}),
          SettingWidget(title: 'Privacy policy', fun: () {}),
          SettingWidget(title: 'Terms and conditions', fun: () {}),
        ],
      ),
    );
  }
}
