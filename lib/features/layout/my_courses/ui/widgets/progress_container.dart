import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProgressContainer extends StatelessWidget {
  const ProgressContainer({
    super.key,
    required this.number,
    this.isActive = false,
  });
  final String number;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive
            ? AppColors.primaryColor
            : AppColors.primaryColor.withOpacity(0.6),
      ),
      child: Text(
        number,
        style: AppStyles.bold14.copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
