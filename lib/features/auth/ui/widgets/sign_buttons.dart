import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SignButtons extends StatelessWidget {
  const SignButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextButtonBuilder.normalWithText(
          text: 'Sign in',
          width: MediaQuery.sizeOf(context).width * 0.40,
          onTap: () {
            context.push(AppRouter.signInView);
          },
        ),
        const Gap(8),
        CustomTextButtonBuilder.reversedWithText(
          text: 'Sign up',
          width: MediaQuery.sizeOf(context).width * 0.40,
          onTap: () {
            context.push(AppRouter.signUpView);
          },
        ),
      ],
    );
  }
}
