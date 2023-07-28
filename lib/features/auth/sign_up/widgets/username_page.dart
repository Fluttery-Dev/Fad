// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import 'package:fad/common/styling.dart';
import 'package:fad/features/auth/widgets/auth_input.dart';

class UsernameInput extends StatelessWidget {
  const UsernameInput({
    Key? key,
    required this.nextPage,
    required this.prevPage,
  }) : super(key: key);

  final void Function() nextPage;
  final void Function() prevPage;

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
            backgroundColor: appPink,
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
