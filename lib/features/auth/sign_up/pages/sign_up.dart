import 'package:fad/common/styling.dart';
import 'package:fad/features/auth/sign_up/widgets/phone_verification.dart';
import 'package:fad/features/auth/sign_up/widgets/sign_up_page_1.dart';
import 'package:fad/features/auth/sign_up/widgets/username_page.dart';
import 'package:fad/features/auth/widgets/video_background.dart';
import 'package:flutter/material.dart';

import '../widgets/pin_input.dart';
import '../widgets/sign_up_common.dart';

class SignUp extends StatelessWidget {
  SignUp({
    super.key,
  });

  final _pageController = PageController();
  void nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    final signUpPages = [
      SignUpPage1(nextPage: nextPage),
      PhoneVerification(nextPage: nextPage),
      OtpVerification(
        nextPage: nextPage,
      ),
      UsernameInput(nextPage: nextPage),
    ];
    return VideoBackground(
      mainContent: SizedBox(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: signUpPages,
        ),
      ),
    );
  }
}
