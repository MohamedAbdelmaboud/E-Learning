import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/routing/app_routes.dart';

class SignUpHere extends StatelessWidget {
  const SignUpHere({super.key});

  _navigateToSignUpView(BuildContext context) =>
      context.push(AppRouter.signUpView);

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
        CustomTextButtonBuilder.bold(
          text: 'Sign Up here',
          onTap: () => _navigateToSignUpView(context),
        ),
      ],
    );
  }
}
