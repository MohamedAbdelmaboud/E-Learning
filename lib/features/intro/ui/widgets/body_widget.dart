import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;

  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.bold24,
          textAlign: TextAlign.center,
        ),
        const Gap(15),
        Text(
          subTitle,
          style: AppStyles.regular16,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
