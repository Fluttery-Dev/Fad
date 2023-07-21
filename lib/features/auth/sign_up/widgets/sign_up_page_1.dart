// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fad/features/auth/sign_up/widgets/sign_up_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../common/styling.dart';
import '../../widgets/auth_input.dart';

class SignUpPage1 extends StatelessWidget {
  SignUpPage1({
    Key? key,
    required this.nextPage,
  }) : super(key: key);

  final void Function() nextPage;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SignUpCommon(
      mainLoginContent: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(10.h),
          AuthInput(
            controller: _emailController,
            hintText: 'Email/Username',
            keyboardType: TextInputType.emailAddress,
          ),
          Gap(20.h),
          AuthInput(
            controller: _passwordController,
            hintText: 'Password',
            inputVisible: false,
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
            }, //TODO: To add signin logic
            child: Text(
              "Let's Go",
              style: TextStyles.subTitle,
            ),
          ),
        ],
      ),
    );
  }
}
