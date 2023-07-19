// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BulletedText extends StatelessWidget {
  const BulletedText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final TextSpan text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle_rounded,
            color: Colors.white,
          ),
          Gap(10.w),
          Flexible(
            child: RichText(
              text: text,
            ),
          ),
        ],
      ),
    );
  }
}
