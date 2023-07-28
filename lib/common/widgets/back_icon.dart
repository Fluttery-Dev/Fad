import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
      onPressed: () {
        Navigator.pop(context);
      },
      color: Colors.white,
      );
  }
}
