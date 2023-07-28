// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fad/features/auth/sign_up/widgets/sign_up_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../common/styling.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({
    Key? key,
    required this.nextPage,
  }) : super(key: key);

  final void Function() nextPage;

  @override
  Widget build(BuildContext context) {
    final TextEditingController phoneController = TextEditingController();
    return SignUpCommon(
      mainLoginContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(10.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Enter Phone Number",
              style: TextStyles.subTitle,
            ),
          ),
          Gap(20.h),
          IntlPhoneField(
            controller: phoneController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.r),
                borderSide: const BorderSide(
                  color: Colors.red,
                ),
              ),
              hintText: "Phone Number",
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: appPink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            onPressed: () {
              nextPage();
            }, //TODO: To add OTP generation logic
            child: Text(
              "Generate OTP",
              style: TextStyles.subTitle,
            ),
          ),
        ],
      ),
    );
  }
}
