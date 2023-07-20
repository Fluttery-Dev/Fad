import 'package:fad/common/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
    required this.nextPage,
  });

  final void Function() nextPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0447FD),
                Color(0xFFEE0567),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Get More',
                      style: TextStyles.subTitle
                          .copyWith(fontWeight: FontWeight.normal),
                    ),
                    Text('With Premium', style: TextStyles.title),
                    Gap(20.h),
                    Text(
                        "Choose a plan and get more out of your account. Join Premium today!",
                        style: TextStyles.descp),
                  ],
                ),
              ),
              Image.asset(
                "assets/images/pageView1.png",
                width: 620.w,
                height: 400.h,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 250.h,
          right: 10.w,
          child: IconButton(
            onPressed: nextPage,
            icon: Icon(
              size: 50.w,
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
