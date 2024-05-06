import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTabButton extends StatelessWidget {
  const CustomTabButton({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onTap,
  });
  final bool isSelected;
  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isSelected ? _buildSelectedTab() : _buildUnSelectedTab(),
    );
  }

  Widget _buildSelectedTab() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: AppStyles.semiBold14.copyWith(
          color: AppColors.whiteColor,
        ),
      ),
    );
  }

  Widget _buildUnSelectedTab() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        border: Border.all(color: AppColors.primaryColor),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(10),
      child: Text(
        text,
        style: AppStyles.semiBold14,
      ),
    );
  }
}
