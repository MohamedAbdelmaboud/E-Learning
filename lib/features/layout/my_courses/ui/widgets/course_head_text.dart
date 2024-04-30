import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CourseHeadText extends StatelessWidget {
  const CourseHeadText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.bold20);
  }
}
