import 'package:fad/common/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';

class PremiumIntro extends StatelessWidget {
  const PremiumIntro({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: 0,
    );
    void nextpage() {
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.easeIn);
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                ),
                Gap(70.w),
                Text(
                  'Premium Plans',
                  style: TextStyles.title,
                ),
              ],
            ),
            Gap(10.h),
            SizedBox(
              height: screenHeight * 0.8,
              child: PageView(
                controller: pageController,
                children: [
                  Page1(
                    nextPage: nextpage,
                  ),
                  const Page2(),
                  const Page3(),
                ],
              ),
            ),
            Gap(15.h),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                dotHeight: 10.h,
                dotWidth: 20.w,
                dotColor: Colors.grey,
                activeDotColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
