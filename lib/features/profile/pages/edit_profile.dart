import 'package:fad/common/styling.dart';
import 'package:fad/features/profile/widgets/level.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/widgets/back_icon.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const BackIcon(),
        title: Level(
            level: 10, color: appPink, textStyle: TextStyles.subTitleBold),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size: 30.r,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        children: [
          CircleAvatar(
            backgroundImage: const AssetImage(
              'assets/images/profile.png',
            ),
            radius: 60.r,
          ),
        ],
      ),
    );
  }
}
