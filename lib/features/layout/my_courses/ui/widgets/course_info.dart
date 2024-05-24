import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/home/data/models/course_model.dart';
import 'package:e_learning/features/layout/my_courses/ui/widgets/course_channel.dart';
import 'package:flutter/material.dart';

class CourseInfo extends StatelessWidget {
  const CourseInfo({
    super.key,
    required this.courseModel,
  });
  final CourseModel courseModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CourseChannel(
            courseModel: courseModel,
          ),
          Text(
            r'35$',
            style: AppStyles.bold21,
          ),
        ],
      ),
    );
  }
}
