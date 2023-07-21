import 'package:fad/common/styling.dart';
import 'package:fad/features/auth/widgets/auth_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({super.key, required this.nextPage});

  final void Function() nextPage;

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'What should your Fans call you?',
          style: TextStyles.title,
        ),
        Gap(50.h),
        AuthInput(
          controller: usernameController,
          hintText: 'Username',
        ),
        Gap(30.h),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFF005B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          onPressed: () {
            nextPage();
          }, //TODO: To add username logic
          child: Text(
            "Next",
            style: TextStyles.subTitle,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "Back",
            style: TextStyles.subTitle,
          ),
        ),
      ],
    );
  }
}
