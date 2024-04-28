import 'package:e_learning/common/utils/app_styles.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../common/routing/app_routes.dart';

class SignInHere extends StatelessWidget {
  const SignInHere({super.key});

  _navigateToSignInView(BuildContext context) =>
      context.push(AppRouter.signInView);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an  Account?',
          style: AppStyles.regular12,
        ),
        const Gap(3),
        CustomTextButtonBuilder.bold(
          text: 'Sign In here',
          onTap: () => _navigateToSignInView(context),
        ),
      ],
    );
  }
}
