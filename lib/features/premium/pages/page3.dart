import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/styling.dart';
import '../widgets/premium_plans.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PremiumPlans(
      price: '199',
      headLine: 'Basic',
      colors: const [
        Color(0xFFA617FF),
        Color(0xFF03BFFF),
      ],
      textSpans: [
        TextSpan(
          style: TextStyles.textSpanStyle,
          children: const [
            TextSpan(
              text: '0.7x',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(text: ' points on every like and profile visit.')
          ],
        ),
        TextSpan(
          text: '4 Boosts.',
          style: TextStyles.textSpanStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        TextSpan(
          style: TextStyles.textSpanStyle,
          children: const [
            TextSpan(text: 'Join'),
            TextSpan(
              text: ' Any 4 Communities ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(text: 'for free.'),
          ],
        ),
        TextSpan(
          style: TextStyles.textSpanStyle,
          children: const [
            TextSpan(
              text: 'Unlimited ',
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            TextSpan(
              text: 'messages/day in Communities .',
            ),
          ],
        ),
        TextSpan(
          style: TextStyles.textSpanStyle,
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
