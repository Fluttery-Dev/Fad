// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TierView extends StatelessWidget {
  const TierView({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.8,
    );
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.h),
      height: 200.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: PageView(
        controller: pageController,
        physics: AlwaysScrollableScrollPhysics(),
        clipBehavior: Clip.hardEdge,
        padEnds: false,
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: const [
          CouponView(
            image: 'assets/images/coupon1.png',
          ),
          CouponView(
            image: 'assets/images/coupon2.png',
          ),
          CouponView(
            image: 'assets/images/coupon3.png',
          ),
        ],
      ),
    );
  }
}

class CouponView extends StatelessWidget {
  const CouponView({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
