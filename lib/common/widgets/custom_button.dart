import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final void Function()? onPressed;
  final Color? backgroundColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.backgroundColor = AppColors.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: backgroundColor,
            elevation: 10,
           ),
        child: isLoading
            ? const SpinKitDualRing(
                color: Colors.white,
                lineWidth: 2,
                size: 30,
              )
            : Text(
                text,
                style: AppStyles.regular16,
              ));
  }
}
