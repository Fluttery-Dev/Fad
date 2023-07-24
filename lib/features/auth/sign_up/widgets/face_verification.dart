import 'dart:io';

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
              backgroundColor: const Color(0xFFFF005B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => FaceVerificationDialog(),
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

class FaceVerificationDialog extends StatelessWidget {
  const FaceVerificationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: screenHeight * 0.7,
        width: screenWidth * 0.9,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Gap(20.h),
            Text(
              'Now, Do This.',
              style: TextStyles.title.copyWith(color: Colors.black),
            ),
            Gap(10.h),
            Text(
              'Copy the pose in the photo below. We will compare your photo and if they match, your account will be verified. You can start using Fad as normal.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xff50555c),
                fontWeight: FontWeight.w700,
                fontSize: 18.sp,
              ),
            ),
            Gap(20.h),
            Image.asset(
              alignment: Alignment.topCenter,
              'assets/images/face_verify.png',
              fit: BoxFit.fitWidth,
            ),
            Gap(20.h),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF005B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              onPressed: () async {
                XFile? imageX;
                try {
                  final ImagePicker _picker = ImagePicker();
                  imageX = await _picker.pickImage(
                    source: ImageSource.camera,
                    imageQuality: 50,
                  );
                } catch (e) {
                  print(e);
                }
                File image = imageX!.path as File;
                Navigator.of(context).pop();
              }, //TODO: To add Alertbox
              child: Text(
                "I'm Ready",
                style: TextStyles.subTitle,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                "Back",
                style: TextStyles.subTitle.copyWith(
                  color: const Color(
                    0xff50555c,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
