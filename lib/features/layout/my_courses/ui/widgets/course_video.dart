import 'package:e_learning/features/layout/my_courses/ui/widgets/video_player.dart';
import 'package:flutter/material.dart';

class CourseVideo extends StatelessWidget {
  const CourseVideo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VideoPlayerWidget(
      url: 'assets/videos/video.mp4',
    );
  }
}
