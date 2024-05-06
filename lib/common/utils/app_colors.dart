import 'dart:ui';

class AppColors {
  AppColors._();
  static const Color primaryColor = Color(0xFF4c53a5);
  static const Color secondaryColor = Color(0xFF9B98FF);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color blackColor = Color(0xFF000000);
  static const Color greyColor = Color(0xFF6C6C6C);
  static const Color dotsColor = Color(0xFFC5C5C5);
  static Color withOpacity = AppColors.secondaryColor.withOpacity(0.2);
}
