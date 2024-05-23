import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PaymentHeadText extends StatelessWidget {
  const PaymentHeadText(
    this.text, {
    super.key,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: AppStyles.bold21,
      ),
    );
  }
}
