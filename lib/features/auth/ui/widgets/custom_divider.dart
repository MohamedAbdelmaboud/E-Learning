import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Gap(20),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 1,
            color: AppColors.primaryColor,
          ),
        ),
        const Gap(15),
        Text(
          text,
          style: AppStyles.semiBold16.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        const Gap(15),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 1,
            color: AppColors.primaryColor,
          ),
        ),
        const Gap(20)
      ],
    );
  }
}
