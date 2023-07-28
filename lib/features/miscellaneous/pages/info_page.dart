// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:fad/common/styling.dart';
import 'package:fad/common/widgets/back_icon.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackIcon(),
        centerTitle: true,
        title: Text(
          'How it works',
          style: TextStyles.title.copyWith(
            color: appPink,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 20.h,
        ),
        children: const [
          Header(text: 'Earning Points'),
          Content(
            text:
                'Users earn points through the likes they receive and profile impressions.',
          ),
          Content(
            text:
                'Users can further earn more points by completing quests and earning the “Super Fan” badge in an Influencer’s community.',
          ),
          Content(
            text:
                'Depending on the Subscription plan purchased, users can earn anywhere between 0.5 to 0.75 times more points.',
          ),
          Header(text: 'Tiers'),
          Content(
            text: 'There are a total of 6 Tiers divided into 5 Levels each.',
          ),
          TierInfo(
              header: 'Beginner (Tier 1: Level 1 to 5)',
              levelUpPoints: 25,
              unlockNextTierPoints: 100),
          TierInfo(
              header: 'Amateur (Tier 2: Level 5 to 10)',
              levelUpPoints: 30,
              unlockNextTierPoints: 120),
          TierInfo(
              header: 'Intermediate (Tier 3: Level 10 to 15)',
              levelUpPoints: 40,
              unlockNextTierPoints: 160),
          TierInfo(
              header: 'Advanced (Tier 4: Level 15 to 20)',
              levelUpPoints: 50,
              unlockNextTierPoints: 200),
          TierInfo(
              header: 'Semi-Influencer (Tier 5: Level 20 to 25)',
              levelUpPoints: 60,
              unlockNextTierPoints: 240),
          Header(text: 'Influencer (Tier 6: Level 25 to 50)'),
          Content(
            text:
                'Points required to level up: 1000 Points to reach Level 30, ',
          ),
          Content(
            text:
                'Users can monetize there account by creating there own community.',
          ),
          Header(text: 'Rewards'),
          Content(
            text:
                'At every tier, users will unlock  coupons from 3 reputed brands of which they will have to choose one. ',
          ),
          Content(
            text: 'The coupon will be redeemable on the brand’s website/app. ',
          ),
          Content(
            text: 'The higher the tier, better the brands.',
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, bottom: 8.h),
      child: Text(
        text,
        style: TextStyles.descp.copyWith(
          decoration: TextDecoration.underline,
          decorationColor: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Text(
        text,
        style: TextStyles.descp.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}

class TierInfo extends StatelessWidget {
  const TierInfo({
    super.key,
    required this.header,
    required this.levelUpPoints,
    required this.unlockNextTierPoints,
  });
  final String header;
  final int levelUpPoints;
  final int unlockNextTierPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Header(text: header),
        Content(
          text: 'Points required to level up: $levelUpPoints Points',
        ),
        Content(
          text:
              'Points required to unlock next tier: $unlockNextTierPoints Points',
        ),
      ],
    );
  }
}
