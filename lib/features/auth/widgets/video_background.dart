import 'dart:async';

import 'package:fad/common/styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class VideoBackground extends StatefulWidget {
  const VideoBackground({super.key});

  @override
  State<VideoBackground> createState() => _VideoBackgroundState();
}

class _VideoBackgroundState extends State<VideoBackground> {
  late VideoPlayerController _videoPlayerController;
  late bool _visible = false;
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _videoPlayerController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoPlayerController =
        VideoPlayerController.asset('assets/videos/intro.mp4');
    _videoPlayerController.initialize().then(
      (_) {
        _videoPlayerController.setLooping(true);
        Timer(
          const Duration(milliseconds: 100),
          () {
            setState(() {
              _videoPlayerController.play();
              _visible = true;
            });
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final videoBackground = SizedBox(
      height: screenHeight * 0.55,
      width: screenWidth,
      child: ClipRect(
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 1000),
          child: VideoPlayer(
            _videoPlayerController,
          ),
        ),
      ),
    );

    final mainContent = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        height: screenHeight * 0.55,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
        ),
        child: Column(
          children: [
            Text(
              "Welcome, Influencer",
              style: const TextStyle(
                fontFamily: "Montserrat",
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Color(0xfff5f5f7),
                height: 36 / 25,
              ),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [videoBackground, mainContent],
      ),
    );
  }
}
