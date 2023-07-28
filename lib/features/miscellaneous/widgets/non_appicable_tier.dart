// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:fad/common/styling.dart';
import 'package:gap/gap.dart';

class NonApplicableTier extends StatefulWidget {
  const NonApplicableTier({
    Key? key,
    required this.tier,
  }) : super(key: key);
  final int tier;
  @override
  State<NonApplicableTier> createState() => _NonApplicableTierState();
}

class _NonApplicableTierState extends State<NonApplicableTier> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text(
                'Non Applicable Tier',
                textAlign: TextAlign.center,
              ),
              content: Text(
                'The Tier is not unlocked yet. Please get enough points to unlock this tier',
                textAlign: TextAlign.center,
              ),
            );
          },
        );
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.h),
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
            height: 200.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              clipBehavior: Clip.hardEdge,
              padEnds: false,
              scrollDirection: Axis.horizontal,
              pageSnapping: true,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    width: screenWidth * 0.5,
                    'assets/images/coupon1.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.h),
            height: 200.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF4E4E4E).withOpacity(0.9),
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 60.r,
                ),
                Gap(10.h),
                Text(
                  'Unlock Tier ${widget.tier} \nto view',
                  style: TextStyles.title.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
