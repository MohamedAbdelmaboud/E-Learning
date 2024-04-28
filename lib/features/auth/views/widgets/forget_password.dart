import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () {},
        child: Text(
          'Forget Password?',
          style: AppStyles.regular12,
        ),
      ),
    );
  }
}
