import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProgressText extends StatelessWidget {
  const ProgressText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.medium12.copyWith(
        color: AppColors.primaryColor,
      ),
    );
  }
}
