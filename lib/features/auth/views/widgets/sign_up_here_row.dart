import 'package:e_learning/common/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignUpHereRow extends StatelessWidget {
  const SignUpHereRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an  Account?',
          style: AppStyles.regular12,
        ),
        const Gap(3),
        InkWell(
          onTap: () {},
          child: Text(
            'Sign Up here',
            style: AppStyles.bold12,
          ),
        ),
      ],
    );
  }
}
