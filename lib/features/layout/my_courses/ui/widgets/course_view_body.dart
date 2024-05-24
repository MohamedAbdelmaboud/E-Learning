import 'package:e_learning/features/layout/my_courses/ui/widgets/course_details.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/course_video.dart';
import 'package:flutter/material.dart';

import '../../../home/data/models/course_model.dart';

class CourseViewBody extends StatelessWidget {
  const CourseViewBody(
    this.courseModel, {
    super.key,
  });

  final CourseModel courseModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // todo: change Course video to course image
            // const CourseVideo(),
            CourseDetails(
              courseModel: courseModel,
            ),
          ],
        ),
      ),
    );
  }
}
