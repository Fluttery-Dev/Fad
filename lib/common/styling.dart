import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

double screenWidth = 390.w;
double screenHeight = 844.h;
const Color appPink = Color(0xFFFF005B);

class TextStyles {
  static TextStyle title = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 30.sp,
    fontWeight: FontWeight.w700,
    color: Colors.white,
  );
  static TextStyle subTitle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 25.sp,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static TextStyle descp = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20.h,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static TextStyle descpSmall = TextStyles.descp.copyWith(fontSize: 16.sp);
  static final TextStyle textSpanStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.normal,
  );
}
