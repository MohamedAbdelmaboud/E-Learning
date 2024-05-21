import 'package:e_learning/features/layout/my_courses/ui/widgets/course_details.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/course_video.dart';
import 'package:flutter/material.dart';

class CourseViewBody extends StatelessWidget {
  const CourseViewBody(
    this.coursePath, {
    super.key,
  });

  final String coursePath;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CourseVideo(coursePath),
            const CourseDetails(),
          ],
        ),
      ),
    );
  }
}
