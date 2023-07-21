// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../common/styling.dart';

class SignUpCommon extends StatelessWidget {
  const SignUpCommon({
    Key? key,
    required this.mainLoginContent,
  }) : super(key: key);

  final Widget mainLoginContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20.h),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Welcome, Influencer",
            style: TextStyles.title,
            textAlign: TextAlign.left,
          ),
        ),
        Gap(20.h),
        mainLoginContent,
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 15.r,
              backgroundColor: Colors.white,
              child: Image.asset(
                'assets/images/google_image.png',
              ),
            ),
            Gap(10.w),
            Text(
              "Sign Up with Google",
              style: TextStyles.descp,
            ),
          ],
        ),
        const Spacer(),
        Text(
          "Already have an account? ",
          style: TextStyles.descpSmall,
        ),
        GestureDetector(
          child: Text(
            'Sign In',
            style: TextStyles.descpSmall.copyWith(
                decoration: TextDecoration.underline,
                color: const Color(0xFFFF005B),
                decorationColor: const Color(0xFFFF005B)),
          ),
        ),
      ],
    );
  }
}
