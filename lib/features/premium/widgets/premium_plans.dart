// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_line/dotted_line.dart';
import 'package:fad/features/premium/widgets/subscribe_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:fad/features/premium/widgets/bulleted_text.dart';

class PremiumPlans extends StatelessWidget {
  const PremiumPlans({
    Key? key,
    required this.colors,
    required this.headLine,
    required this.textSpans,
    required this.price,
  }) : super(key: key);
  final List<Color> colors;
  final String headLine;
  final List<TextSpan> textSpans;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/pageView2.png',
                height: 40.h,
                width: 40.h,
              ),
              Gap(20.w),
              Text(
                headLine,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Gap(25.h),
          Text(
            'What You’ll Get',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(10.h),
          ...textSpans.map((e) => BulletedText(text: e)).toList(),
          DottedLine(dashColor: Colors.white, dashGapLength: 5.w),
          Gap(20.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '₹$price',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: '/month',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          const SubscribeButton(),
        ],
      ),
    );
  }
}
