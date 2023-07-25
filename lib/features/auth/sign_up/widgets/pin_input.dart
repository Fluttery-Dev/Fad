// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fad/features/auth/sign_up/widgets/sign_up_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

import '../../../../common/styling.dart';

class OtpVerification extends StatelessWidget {
  OtpVerification({
    Key? key,
    required this.nextPage,
  }) : super(key: key);

  final void Function() nextPage;
  final _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 60.w,
      height: 70.h,
      textStyle: TextStyle(
          fontSize: 20.sp,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white,
      ),
    );
    return SignUpCommon(
      mainLoginContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(10.h),
          Text(
            "Enter OTP",
            style: TextStyles.title,
          ),
          Gap(20.h),
          Pinput(
            defaultPinTheme: defaultPinTheme,
            controller: _pinController,
            length: 4,
          ),
          Gap(20.h),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFFF005B),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: () {
              nextPage();
            }, //TODO: To add OTP verification logic
            child: Text(
              "Verify OTP",
              style: TextStyles.subTitle,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
