import 'package:fad/common/styling.dart';
import 'package:fad/features/auth/sign_in/widgets/sign_in_common.dart';
import 'package:fad/features/auth/widgets/auth_input.dart';
import 'package:fad/features/auth/widgets/video_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SignIn extends StatelessWidget {
  SignIn({
    super.key,
  });

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _loginContent = Column(
      children: [
        AuthInput(
          controller: _emailController,
          hintText: 'Email/Username',
          keyboardType: TextInputType.emailAddress,
        ),
        Gap(20.h),
        AuthInput(
          controller: _passwordController,
          hintText: 'Password',
        )
      ],
    );

    return VideoBackground(
        mainContent: SignInCommon(mainLoginContent: _loginContent));
  }
}
