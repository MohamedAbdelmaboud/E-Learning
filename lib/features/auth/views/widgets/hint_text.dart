import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HintText extends StatelessWidget {
  const HintText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppStyles.regular16,
      ),
    );
  }
}
