import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/features/layout/home/data/models/course_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SuggestionsForYouItem extends StatelessWidget {
  const SuggestionsForYouItem({
    super.key,
    required this.course,
  });

  final CourseModel course;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/${course.imagePath}.png',
            fit: BoxFit.cover,
            width: 150,
          ),
          const Gap(3),
          Text(course.title, style: AppStyles.semiBold14),
          const Gap(2),
          Text(
            course.channelName,
            style: AppStyles.medium12,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const Gap(2),
          Row(
            children: [
              const Icon(
                Icons.star,
                color: AppColors.primaryColor,
                size: 17,
              ),
              const Gap(3),
              Text(course.rating.toString(), style: AppStyles.medium12),
            ],
          ),
        ],
      ),
    );
  }
}
