import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.bold18,
    );
  }
}
