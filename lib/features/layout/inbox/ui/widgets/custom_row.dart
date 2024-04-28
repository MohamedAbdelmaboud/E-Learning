import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyles.semiBold14.copyWith(
              decoration: TextDecoration.underline,
              color: AppColors.primaryColor,
              decorationThickness: 2),
        ),
      ],
    );
  }
}
