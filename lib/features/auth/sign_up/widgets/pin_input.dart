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
