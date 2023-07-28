import 'package:fad/common/styling.dart';
import 'package:fad/features/auth/sign_in/widgets/sign_in_common.dart';
import 'package:fad/features/auth/widgets/auth_input.dart';
import 'package:fad/features/auth/widgets/video_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:pinput/pinput.dart';

class SignIn extends StatefulWidget {
  const SignIn({
    super.key,
  });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _pinController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _pinController.dispose();
  }

  bool _isOtp = false;

  @override
  Widget build(BuildContext context) {
    final otpContent = Column(
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
            backgroundColor: appPink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {}, //TODO: To add OTP verification logic
          child: Text(
            "Verify OTP",
            style: TextStyles.subTitle,
          ),
        ),
      ],
    );
    final loginContent = Column(
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
            backgroundColor: appPink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {
            setState(() {
              _isOtp = true;
            });
          }, //TODO: To add signin logic
          child: Text(
            "Let's Go",
            style: TextStyles.subTitle,
          ),
        ),
      ],
    );

    return VideoBackground(
      mainContent:
          SignInCommon(mainLoginContent: _isOtp ? otpContent : loginContent),
    );
  }
}
