// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import 'package:fad/common/styling.dart';

class VideoBackground extends StatefulWidget {
  const VideoBackground({
    Key? key,
    required this.mainContent,
  }) : super(key: key);

  final Widget mainContent;

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
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        height: screenHeight * 0.55,
        width: screenWidth,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
        ),
        child: widget.mainContent,
      ),
    );

    return Scaffold(
      body: Stack(
        children: [videoBackground, mainContent],
      ),
    );
  }
}
