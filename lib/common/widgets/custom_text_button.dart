import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.child,
    this.onTap,
    this.width,
    this.hight,
    this.borderRadius,
    this.bgColor = AppColors.primaryColor,
    this.borderColor = AppColors.primaryColor,
  });
  final Function()? onTap;
  final double? width;
  final double? hight;
  final Widget child;
  final double? borderRadius;
  final Color borderColor;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: hight,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          color: bgColor,
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
        ),
        child: child,
      ),
    );
  }
}
