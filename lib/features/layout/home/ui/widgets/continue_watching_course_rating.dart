import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContinueWatchingCourseRating extends StatelessWidget {
  const ContinueWatchingCourseRating(
    this.rating, {
    super.key,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: AppColors.primaryColor,
        ),
        const Gap(3),
        Text(rating.toString()),
        const Gap(3),
      ],
    );
  }
}
