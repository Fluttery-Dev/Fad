import 'package:fad/common/styling.dart';
import 'package:flutter/material.dart';

import '../widgets/premium_plans.dart';

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PremiumPlans(
      price: '99',
      headLine: 'Basic',
      colors: const [
        Color(0xFFFF04DF),
        Color(0xFFFF9604),
      ],
      textSpans: [
        TextSpan(
          style: TextStyles.textSpanStyle,
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
          style: TextStyles.textSpanStyle.copyWith(fontWeight: FontWeight.w700),
        ),
        TextSpan(
          style: TextStyles.textSpanStyle,
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
          style: TextStyles.textSpanStyle,
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
