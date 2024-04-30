import 'package:flutter/material.dart';

import '../widgets/course_content.dart';
import '../widgets/course_details.dart';

class CourseView extends StatelessWidget {
  const CourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CourseViewBody(),
    );
  }
}

class CourseViewBody extends StatelessWidget {
  const CourseViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CourseContent(),
          CourseDetails(),
        ],
      ),
    );
  }
}
