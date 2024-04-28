import 'package:e_learning/features/auth/ui/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/full_name_text_field.dart';
import '../widgets/sign_in_here.dart';
import '../widgets/sign_in_hint_text.dart';
import '../widgets/sign_in_text.dart';
import '../widgets/sign_up_button.dart';
import '../widgets/sign_up_confirm_password_text_field.dart';
import '../widgets/sign_up_email_text_field.dart';
import '../widgets/sign_up_password_text_field.dart';
import '../widgets/sign_up_with_facebook.dart';
import '../widgets/sign_up_with_google.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Gap(70),
                HeadText('SIGN UP'),
                Gap(20),
                HintText(
                  'Create your account to embark on your educational adventure',
                ),
                Gap(12),
                FullNameTextField(),
                Gap(20),
                SignUpEmailTextField(),
                Gap(20),
                SignUpPasswordTextField(),
                Gap(20),
                SignUpConfirmPasswordTextField(),
                Gap(20),
                SignUpButton(),
                Gap(20),
                CustomDivider('Or Sign Up with'),
                Gap(16),
                SignUpWithFacebook(),
                Gap(16),
                SignUpWithGoogle(),
                Gap(20),
                SignInHere(),
                Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
