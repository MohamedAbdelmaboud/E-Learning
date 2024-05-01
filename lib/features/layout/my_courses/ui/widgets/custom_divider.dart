import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        thickness: 1.5,
        color: AppColors.secondaryColor,
      ),
    );
  }
}
