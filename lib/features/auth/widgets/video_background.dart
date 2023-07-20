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
            _videoPlayerController.play();
            _visible = true;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final _videoBackground = Container(
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

    final _mainContent = Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: screenHeight * 0.55,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.r),
            topRight: Radius.circular(50.r),
          ),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: [_videoBackground, _mainContent],
      ),
    );
  }
}
