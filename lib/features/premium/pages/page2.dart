import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/premium_plans.dart';

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
  });

  @override
  @override
  Widget build(BuildContext context) {
    final TextStyle textSpanStyle = TextStyle(
      color: Colors.white,
      fontSize: 22.sp,
      fontFamily: 'Inter',
      fontWeight: FontWeight.normal,
    );
    return PremiumPlans(
      headLine: 'Basic',
      colors: const [
        Color(0xFFFF04DF),
        Color(0xFFFF9604),
      ],
      textSpans: [
        TextSpan(
          style: textSpanStyle,
          children: const [
            TextSpan(
              text: '0.5x',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(text: ' points on every like and profile visit.')
          ],
        ),
        TextSpan(
          text: '2 Boosts.',
          style: textSpanStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        TextSpan(
          style: textSpanStyle,
          children: const [
            TextSpan(text: 'Join'),
            TextSpan(
              text: ' Any 2 Communities ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(text: 'for free.'),
          ],
        ),
        TextSpan(
          style: textSpanStyle,
          children: const [
            TextSpan(
              text: '100 messages/day',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: ' limit in Communities from usual 10 messages/day.',
            ),
          ],
        ),
        TextSpan(
          style: textSpanStyle,
          children: const [
            TextSpan(text: 'See who '),
            TextSpan(
              text: 'views your profile.',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
