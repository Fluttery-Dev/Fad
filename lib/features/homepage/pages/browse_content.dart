import 'package:fad/features/homepage/widgets/reel_screen.dart';
import 'package:flutter/material.dart';

class BrowseContent extends StatelessWidget {
  const BrowseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return ReelContent();
      },
      scrollDirection: Axis.vertical,
      itemCount: 1,
    );
  }
}
