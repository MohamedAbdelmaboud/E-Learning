import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class UnderlineText extends StatelessWidget {
  const UnderlineText({
    super.key,
    required this.text,
    this.onPressed,
  });
  final String text;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.regular14.copyWith(
            decoration: TextDecoration.underline, color: AppColors.greyColor),
      ),
    );
  }
}
