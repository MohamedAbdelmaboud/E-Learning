import 'package:e_learning/features/auth/ui/widgets/sign_in_hint_text.dart';
import 'package:e_learning/features/auth/ui/widgets/sign_in_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/confirm_password_text_form.dart';
import '../widgets/new_password_text_form.dart';
import '../widgets/save_button.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(70),
              HeadText('Reset Password'),
              Gap(20),
              HintText(
                  'Reset your password to regain access to your learning journey.'),
              Gap(16),
              NewPasswordTextForm(),
              Gap(20),
              ConfirmPasswordTextForm(),
              Gap(40),
              SaveButton(),
            ],
          ),
        ),
      ),
    );
  }
}
