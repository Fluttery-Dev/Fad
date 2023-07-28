import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../common/styling.dart';

Future<File> getImage() async {
  XFile? imageX;

  final ImagePicker picker = ImagePicker();
  imageX = await picker.pickImage(
    source: ImageSource.camera,
    imageQuality: 50,
  );

  File image = File(imageX!.path);
  return image;
}

class FaceVerificationInfoDialog extends StatefulWidget {
  const FaceVerificationInfoDialog({super.key});

  @override
  State<FaceVerificationInfoDialog> createState() =>
      _FaceVerificationInfoDialogState();
}

class _FaceVerificationInfoDialogState
    extends State<FaceVerificationInfoDialog> {
  File? image;

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
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
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.asset(
            'assets/images/face_verify.png',
            fit: BoxFit.fitWidth,
            width: 150.w,
          ),
        ),
        Gap(20.h),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: appPink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () async {
            image = await getImage();
            setState(() {});
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
    );

    return Dialog(
      child: Container(
        height: screenHeight * 0.7,
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: image == null ? content : Confirm(image: image!),
      ),
    );
  }
}

class Confirm extends StatefulWidget {
  Confirm({super.key, required this.image});
  File image;
  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Gap(20.h),
        Text(
          'Happy with your photo?',
          style: TextStyles.title.copyWith(color: Colors.black),
          textAlign: TextAlign.center,
        ),
        Gap(20.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.asset(
                'assets/images/face_verify.png',
                fit: BoxFit.fill,
                width: 140.w,
                height: 200.h,
              ),
            ),
            Gap(10.w),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.r),
              child: Image.file(
                widget.image,
                fit: BoxFit.fill,
                width: 140.w,
                height: 200.h,
              ),
            ),
          ],
        ),
        Gap(30.h),
        SizedBox(
          width: 200.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: appPink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                onPressed: () {}, //TODO: To add Alertbox
                child: Text(
                  "Get me Verified",
                  style:
                      TextStyles.subTitle.copyWith(fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(10.h),
              TextButton(
                onPressed: () async {
                  widget.image = await getImage();
                  setState(() {});
                },
                child: Text(
                  "No, take another photo",
                  style: TextStyles.subTitle.copyWith(
                      color: const Color(
                        0xff50555c,
                      ),
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
