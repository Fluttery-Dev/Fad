// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../common/styling.dart';

class Level extends StatelessWidget {
  const Level({
    Key? key,
    required this.level,
    this.textStyle,
    this.color,
  }) : super(key: key);
  final int level;
  final Color? color;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star_border_outlined,
          color: color ?? Colors.white,
          size: 25.r,
        ),
        Gap(5.w),
        Text(
          'Level $level',
          style: (textStyle ?? TextStyles.descp).copyWith(
            color: color ?? Colors.white,
          ),
        ),
      ],
    );
  }
}
