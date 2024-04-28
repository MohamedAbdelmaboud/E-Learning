import 'package:e_learning/common/routing/app_routes.dart';
import 'package:e_learning/common/widgets/custom_text_button_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  _navigateToForgetPasswordView(BuildContext context) =>
      context.push(AppRouter.resetPasswordView);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: CustomTextButtonBuilder.regular(
        text: 'Forget Password?',
        onTap: () => _navigateToForgetPasswordView(context),
      ),
    );
  }
}
