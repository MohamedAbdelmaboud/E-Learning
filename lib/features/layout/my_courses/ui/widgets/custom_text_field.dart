import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      child: TextField(
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.primaryColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                )),
            labelText: hintText,
            labelStyle:
                AppStyles.medium14.copyWith(color: const Color(0xff6C6C6C))),
      ),
    );
  }
}
