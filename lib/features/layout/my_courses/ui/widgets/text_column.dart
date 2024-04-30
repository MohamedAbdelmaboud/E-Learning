import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TextColumn extends StatelessWidget {
  const TextColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Visual Communication College',
          style: AppStyles.medium14,
        ),
        Row(
          children: [
            const Icon(
              Icons.group,
              color: AppColors.secondaryColor,
              size: 15,
            ),
            const Gap(5),
            Text(
              '3.4k students',
              style:
                  AppStyles.regular12.copyWith(color: AppColors.secondaryColor),
            ),
          ],
        ),
      ],
    );
  }
}
