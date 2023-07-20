import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double screenWidth = 390.w;
double screenHeight = 844.h;

class TextStyles {
  static TextStyle title = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle subTitle = TextStyle(
    fontSize: 25.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle descp = TextStyle(
    fontSize: 20.h,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static final TextStyle textSpanStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontFamily: 'Inter',
    fontWeight: FontWeight.normal,
  );
}
