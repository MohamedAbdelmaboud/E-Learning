import 'package:e_learning/common/utils/app_images.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageDecoration buildPageDecoration() {
  return PageDecoration(
    bodyAlignment: Alignment.center,
    bodyTextStyle: AppStyles.regular16,
  );
}

List<PageViewModel> pages = [
  PageViewModel(
    decoration: buildPageDecoration(),
    titleWidget: SvgPicture.asset(
      Assets.assetsImagesLearningBro,
      height: 300,
    ),
    body:
        "Begin your educational journey with access to a diverse range of courses.",
  ),
  PageViewModel(
    titleWidget: SvgPicture.asset(
      Assets.assetsImagesOnlinelearningAmico,
      height: 300,
    ),
    decoration: buildPageDecoration(),
    body:
        "Explore interactive lessons, quizzes, and multimedia content to enhance your understanding.",
  ),
  PageViewModel(
    decoration: buildPageDecoration(),
    titleWidget: SvgPicture.asset(
      Assets.assetsImagesWebinarRafiki,
      height: 300,
    ),
    body:
        "Connect with knowledgeable tutors for personalized guidance.",
  ),
];
