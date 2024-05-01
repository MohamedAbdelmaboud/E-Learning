import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CourseName extends StatelessWidget {
  const CourseName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Cousrse Name:',
          style: AppStyles.bold14.copyWith(color: AppColors.secondaryColor),
        ),
        const Gap(9),
        Flexible(
          child: Text(
            'Typography and Layout Design',
            style:
                AppStyles.regular12.copyWith(color: AppColors.secondaryColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
