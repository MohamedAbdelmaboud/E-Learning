import 'package:flutter/material.dart';

import '../widgets/course_view_body.dart';

class CourseView extends StatelessWidget {
  const CourseView({
    super.key,
    required this.coursePath,
  });
  final String coursePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CourseViewBody(coursePath),
    );
  }
}
