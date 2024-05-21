import 'package:flutter/material.dart';

class ContinueWatchingCourseImage extends StatelessWidget {
  const ContinueWatchingCourseImage(
    this.imagePath, {
    super.key,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/$imagePath.png',
            width: 120,
            height: 90,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
