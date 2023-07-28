import 'package:fad/common/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReelContent extends StatelessWidget {
  const ReelContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(
            'assets/images/reel.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          child: Text('FAD',
              style: TextStyles.title
                  .copyWith(fontSize: 80.sp, fontWeight: FontWeight.w400)),
          alignment: Alignment.topCenter,
        ),
        
      ],
    );
  }
}
