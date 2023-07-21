import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../common/styling.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _phoneController = TextEditingController();
    return Column(
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
          controller: _phoneController,
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
            backgroundColor: const Color(0xFFFF005B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {}, //TODO: To add OTP generation logic
          child: Text(
            "Generate OTP",
            style: TextStyles.subTitle,
          ),
        ),
      ],
    );
  }
}
