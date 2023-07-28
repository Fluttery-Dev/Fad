import 'package:fad/common/styling.dart';
import 'package:fad/common/widgets/back_icon.dart';
import 'package:fad/features/miscellaneous/widgets/non_appicable_tier.dart';
import 'package:fad/features/miscellaneous/widgets/tier_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Rewards',
          style: TextStyles.subTitle,
        ),
        actions: [
          TextButton(
            onPressed: () {}, //TODO: Send to info page
            child: Text(
              'How it works',
              style: TextStyles.descpSmall.copyWith(
                color: appPink,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        children: const [
          TierView(),
          NonApplicableTier(
            tier: 2,
          ),
          NonApplicableTier(
            tier: 3,
          ),
          NonApplicableTier(
            tier: 4,
          ),
          NonApplicableTier(
            tier: 5,
          ),
          NonApplicableTier(
            tier: 6,
          ),
          NonApplicableTier(
            tier: 7,
          ),
        ],
      ),
    );
  }
}
