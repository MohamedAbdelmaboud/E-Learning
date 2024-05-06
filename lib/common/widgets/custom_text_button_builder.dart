import 'package:e_learning/common/utils/app_colors.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomTextButtonBuilder {
  static regular({
    required String text,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: AppStyles.regular12,
      ),
    );
  }

  static bold({
    required String text,
    required Function() onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Text(
        text,
        style: AppStyles.bold12,
      ),
    );
  }

  static normalWithText({
    required String text,
    required Function() onTap,
    double? width,
    double? hight,
    double? borderRadius,
  }) {
    return CustomTextButton(
      onTap: onTap,
      width: width,
      hight: hight,
      borderRadius: borderRadius,
      child: Text(
        text,
        style: AppStyles.semiBold16.copyWith(
          color: AppColors.whiteColor.withOpacity(0.8),
        ),
      ),
    );
  }

  static reversedWithText({
    required String text,
    Function()? onTap,
    double? width,
    double? hight,
    double? borderRadius,
  }) {
    return CustomTextButton(
      onTap: onTap,
      width: width,
      hight: hight,
      bgColor: AppColors.whiteColor.withOpacity(0.8),
      borderRadius: borderRadius,
      borderColor: AppColors.primaryColor,
      child: Text(
        text,
        style: AppStyles.semiBold16.copyWith(
          color: AppColors.primaryColor,
        ),
      ),
    );
  }

  static normalWithTextAndLogo({
    required String text,
    required String logo,
    required Function() onTap,
    double? width,
    double? hight,
    Color? bgColor,
    Color? borderColor,
  }) {
    return CustomTextButton(
      onTap: onTap,
      width: width,
      hight: hight,
      bgColor: bgColor ?? const Color(0xff1877F2),
      borderColor: borderColor ?? const Color(0xff1877F2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(logo),
          const Gap(10),
          Text(
            text,
            style: AppStyles.semiBold16.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
    );
  }

  static reversedWithTextAndLogo({
    required String text,
    required String logo,
    required Function() onTap,
    double? width,
    double? hight,
  }) {
    return CustomTextButton(
      onTap: onTap,
      width: width,
      hight: hight,
      bgColor: AppColors.whiteColor,
      borderColor: AppColors.primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(logo),
          const Gap(10),
          Text(
            text,
            style: AppStyles.semiBold16.copyWith(
              color: AppColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }

  static Widget normalTabBar({
    required String text,
    required Function() onTap,
  }) {
    return normalWithText(
      text: text,
      borderRadius: 30,
      onTap: onTap,
    );
  }

  static Widget selectedTabBar({
    required String text,
    required Function() onTap,
  }) {
    return reversedWithText(
      text: text,
      borderRadius: 30,
      onTap: onTap,
    );
  }
}
