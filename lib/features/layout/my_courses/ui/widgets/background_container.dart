import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.5),
      ),
    );
  }
}
