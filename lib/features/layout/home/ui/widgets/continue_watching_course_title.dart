import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ContinueWatchingCourseTitle extends StatelessWidget {
  const ContinueWatchingCourseTitle(
    this.title, {
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.bold14,
    );
  }
}
