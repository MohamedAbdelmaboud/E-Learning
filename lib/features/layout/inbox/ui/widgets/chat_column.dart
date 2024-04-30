import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.bold14,
        ),
        const Gap(5),
        Text(
          subTitle,
          style: AppStyles.regular12,
        )
      ],
    );
  }
}
