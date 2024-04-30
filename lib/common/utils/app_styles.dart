import 'package:e_learning/common/utils/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppStyles {
  // Regular
  static TextStyle _regular({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular9 = _regular(
    color: Colors.white,
    fontSize: 9,
  );
  static TextStyle regular12 = _regular(
    color: AppColors.greyColor,
    fontSize: 12,
  );

  static TextStyle regular14 = _regular(
    color: AppColors.greyColor,
    fontSize: 14,
  );

  static TextStyle regular16 = _regular(
    color: AppColors.greyColor,
    fontSize: 16,
  );

  static TextStyle regular18 = _regular(
    color: AppColors.secondaryColor,
    fontSize: 18,
  );

  // Medium
  static TextStyle _medium({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium12 = _medium(
    color: AppColors.secondaryColor,
    fontSize: 12,
  );

  static TextStyle medium13 = _medium(
    color: AppColors.primaryColor,
    fontSize: 13,
  );
static TextStyle medium14= _medium(
    color: AppColors.secondaryColor,
    fontSize: 14,
  );
  static TextStyle medium16 = _medium(
    color: const Color(0xFF064061),
    fontSize: 16,
  );

  static TextStyle medium20 = _medium(
    color: Colors.white,
    fontSize: 20,
  );

  // Semi Bold
  static TextStyle _semiBold({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold14 = _semiBold(
    color: AppColors.primaryColor,
    fontSize: 14,
  );

  static TextStyle semiBold16 = _semiBold(
    color: AppColors.primaryColor,
    fontSize: 16,
  );

  static TextStyle semiBold18 = _semiBold(
    color: const Color(0xFF4EB7F2),
    fontSize: 18,
  );

  static TextStyle semiBold20 = _semiBold(
    color: const Color(0xFF064061),
    fontSize: 20,
  );

  static TextStyle semiBold24 = _semiBold(
    color: const Color(0xFF4EB7F2),
    fontSize: 24,
  );

  // Bold
  static TextStyle bold({required Color color, required double fontSize}) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: 'PlusJakarta',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bold12 = bold(
    color: AppColors.primaryColor,
    fontSize: 12,
  );
  static TextStyle bold14 = bold(
    color: AppColors.primaryColor,
    fontSize: 14,
  );

  static TextStyle bold16 = bold(
    color: AppColors.greyColor,
    fontSize: 16,
  );

  static TextStyle bold20 = bold(
    color: AppColors.secondaryColor,
    fontSize: 20,
  );
  static TextStyle bold21 = bold(
    color: AppColors.primaryColor,
    fontSize: 21,
  );

  static TextStyle bold24 = bold(
    color: AppColors.secondaryColor,
    fontSize: 24,
  );
}
