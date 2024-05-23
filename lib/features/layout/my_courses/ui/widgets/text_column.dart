import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/home/data/models/course_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({
    super.key,
    required this.courseModel,
  });
  final CourseModel courseModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          courseModel.channelName,
          style: AppStyles.medium14,
        ),
        const Gap(5),
        Row(
          children: [
            const Icon(
              Icons.group,
              color: AppColors.secondaryColor,
              size: 15,
            ),
            const Gap(5),
            Text(
              '${courseModel.studentsCount}k students',
              style:
                  AppStyles.regular12.copyWith(color: AppColors.secondaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
