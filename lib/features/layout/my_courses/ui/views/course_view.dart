import 'package:flutter/material.dart';

import '../../../home/data/models/course_model.dart';
import '../widgets/course_view_body.dart';

class CourseView extends StatelessWidget {
  const CourseView({
    super.key,
    required this.courseModel,
  });
  final CourseModel courseModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CourseViewBody(courseModel),
    );
  }
}
