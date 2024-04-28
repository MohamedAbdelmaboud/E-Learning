import 'package:e_learning/common/utils/assets.dart';
import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'body_widget.dart';
import 'title_widget.dart';

PageDecoration buildPageDecoration() {
  return PageDecoration(
    bodyAlignment: Alignment.center,
    bodyTextStyle: AppStyles.regular16,
  );
}

List<PageViewModel> pages = [
  PageViewModel(
    decoration: buildPageDecoration(),
    titleWidget: const TitleWidget(
      imagePath: Assets.assetsImagesLearningBro,
    ),
    bodyWidget: const BodyWidget(
      title: 'Enter the World of E-Learning',
      subTitle:
          'Begin your educational journey with a diverse range of courses.',
    ),
  ),
  PageViewModel(
    titleWidget: const TitleWidget(
      imagePath: Assets.assetsImagesOnlinelearningAmico,
    ),
    decoration: buildPageDecoration(),
    bodyWidget: const BodyWidget(
      title: 'Embark on Your Learning Adventure',
      subTitle:
          'Explore interactive lessons, quizzes, and multimedia content to enhance your understanding.',
    ),
  ),
  PageViewModel(
    decoration: buildPageDecoration(),
    titleWidget: const TitleWidget(
      imagePath: Assets.assetsImagesWebinarRafiki,
    ),
    bodyWidget: const BodyWidget(
      title: 'Engage with Expert Instructors',
      subTitle: 'Connect with knowledgeable tutors for personalized guidance.',
    ),
  ),
];
