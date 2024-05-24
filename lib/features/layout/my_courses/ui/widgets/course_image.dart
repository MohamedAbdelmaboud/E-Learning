import 'package:flutter/material.dart';

import 'background_container.dart';
import 'image_container.dart';
import 'play_button.dart';

class CourseImage extends StatelessWidget {
  const CourseImage({
    super.key,
    required this.coursePath,
  });

  final String coursePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ImageContainer(coursePath: coursePath),
        const BackgroundContainer(),
        const PlayButton()
      ],
    );
  }
}
