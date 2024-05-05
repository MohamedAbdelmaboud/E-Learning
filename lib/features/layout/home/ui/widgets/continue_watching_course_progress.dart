import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ContinueWatchingCourseProgress extends StatelessWidget {
  const ContinueWatchingCourseProgress(
    this.progress, {
    super.key,
  });
  final int progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 8,
      child: LinearProgressIndicator(
        value: progress.toDouble() / 100,
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(99),
        backgroundColor: AppColors.primaryColor.withOpacity(0.2),
      ),
    );
  }
}
