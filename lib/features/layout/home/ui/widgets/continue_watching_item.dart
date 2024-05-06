import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/features/layout/home/data/models/course_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'continue_watching_course_channel_name.dart';
import 'continue_watching_course_image.dart';
import 'continue_watching_course_progress.dart';
import 'continue_watching_course_rating.dart';
import 'continue_watching_course_title.dart';

class ContinueWatchingItem extends StatelessWidget {
  const ContinueWatchingItem(
    this.course, {
    super.key,
  });
  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      surfaceTintColor: AppColors.whiteColor,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            ContinueWatchingCourseImage(course.imagePath),
            const Gap(15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContinueWatchingCourseTitle(course.title),
                  const Gap(3),
                  ContinueWatchingCourseChannelName(course.channelName),
                  const Gap(3),
                  ContinueWatchingCourseRating(course.rating),
                  const Gap(3),
                  ContinueWatchingCourseProgress(course.progress!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
