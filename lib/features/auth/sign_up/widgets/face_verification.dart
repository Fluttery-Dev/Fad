import 'dart:io';

import 'package:fad/features/auth/sign_up/widgets/face_verification_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/styling.dart';

class FaceVerification extends StatelessWidget {
  const FaceVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(40.h),
        Text(
          "Just one step away. Verify your face.",
          style: TextStyles.title,
        ),
        Gap(60.h),
        SizedBox(
          width: 300.w,
          height: 50.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: appPink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const FaceVerificationInfoDialog(),
              );
            }, //TODO: To add Alertbox
            child: Text(
              "Let's Get Started",
              style: TextStyles.subTitle,
            ),
          ),
        ),
        Gap(30.h),
        TextButton(
          onPressed: () {},
          child: Text(
            "Back",
            style: TextStyles.subTitle,
          ),
        ),
      ],
    );
  }
}
